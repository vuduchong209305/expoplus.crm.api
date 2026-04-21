<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Request;
use App\Models\Setting;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Auth, Storage, QrCode, File, Blade;

class HTMLHelper {

    public static function uploadImage($avatar_old = '', $type = 'avatar', $folder = 'customer', $max_width = 500, $max_height = 500)
    {
        // Nếu upload file mới
        if (Request::hasFile($type) && Request::file($type)->isValid()) {

            $imageFile = Request::file($type);
            $extension = strtolower($imageFile->getClientOriginalExtension());
            $types = ['jpeg', 'jpg', 'png', 'webp'];

            if (!in_array($extension, $types)) {
                return $avatar_old;
            }

            // Tạo thư mục theo ngày
            $path = $folder . '/' . date('Y/m/d');

            if (!Storage::disk('public')->exists($path)) {
                Storage::disk('public')->makeDirectory($path);
            }

            // Init ImageManager (v3)
            $manager = new ImageManager(new Driver());

            // Read image
            $image = $manager->read($imageFile->getRealPath());

            $image->scaleDown($max_width, $max_height);

            // Tên file
            $fileName = $path . '/' . strRandom(20) . '.webp';

            // Encode WebP (v3)
            $encoded = $image->toWebp(100); // quality 85 là đẹp + nhẹ

            Storage::disk('public')->put($fileName, (string) $encoded);

            // Xoá avatar cũ
            if (!empty($avatar_old) && Storage::disk('public')->exists($avatar_old)) {
                Storage::disk('public')->delete($avatar_old);
            }

            return $fileName;
        }

        // Không đổi ảnh
        if (request()->avatar_current === $avatar_old) {
            return $avatar_old;
        }

        // Xoá ảnh
        if (empty(request()->avatar_current)) {
            Storage::disk('public')->delete($avatar_old);
            return null;
        }

        return $avatar_old;
    }

    public static function renderBladeString($template, $data = []) {
        $generated = Blade::compileString($template);

        ob_start();
        extract($data, EXTR_SKIP);
        $__env = app(\Illuminate\View\Factory::class);
        try {
            eval('?>' . $generated);
        } catch (\Exception $e) {
            ob_end_clean();
            throw $e;
        }

        return ob_get_clean();
    }

    public static function getOption($option_key = null, $value = null)
    {
        if(!empty($option_key)) {

            $option = Setting::select('option_value')->where('option_key', $option_key)->first();

            if($option) {

                $option_value = $option->option_value;

                if(!empty($value) && is_array($option_value) && count($option_value) > 0) {

                    return isset($option_value[$value]) ? $option_value[$value] : null;
                }

                return $option_value;
            }
            
        }
    }

    public static function getOptionLang($key, $lang = null)
    {
        $lang = $lang ?? app()->getLocale();

        $setting = Setting::where('option_key', $key)->first();

        if(!$setting) return null;

        $value = json_decode($setting->option_value, true);

        return is_array($value) ? $value[$lang] : $value;
    }

    public static function generateQR($userExhibition, $exhibition_slug)
    {
        // ===== INIT MANAGER =====
        $manager = new ImageManager(new Driver());

        // Nội dung QR (quan trọng)
        $qrContent = $userExhibition->qr_code;

        // Generate QR
        $qrBinary = (string) QrCode::format('png')
            ->size(500)
            ->encoding('UTF-8')
            ->margin(1)
            ->errorCorrection('H')
            ->generate($qrContent);

        // ===== READ IMAGE =====
        $qrImage = $manager->read($qrBinary);

        // resize logo
        $logoSize = intval($qrImage->width() * 0.2);

        $logo = $manager->read(public_path('assets/images/logo-expoplus-square.jpg'))
            ->resize($logoSize, $logoSize);

        // đặt logo
        $qrImage->place($logo, 'center');

        // ===== TẠO BACKGROUND =====
        $width  = $qrImage->width() + 10;
        $height = $qrImage->height() + 10;

        $background = $manager->create($width, $height)
            ->fill('#ffffff');

        // ===== CHÈN QR =====
        $background->place($qrImage, 'center');

        // path
        $path = 'qrcode/' . date("Y/m/d") . '/' . $exhibition_slug;

        if (!Storage::disk('public')->exists($path)) {
            Storage::disk('public')->makeDirectory($path);
        }

        $fileName = $path . '/' . $userExhibition->qr_code . '.webp';

        // ===== ENCODE WEBP =====
        $encoded = $background->toWebp(90);

        Storage::disk('public')->put($fileName, (string) $encoded);

        return $fileName;
    }
}

?>