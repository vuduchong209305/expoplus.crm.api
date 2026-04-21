<?php 

/* Hiển thị mảng dữ liệu */
if(!function_exists('pre')) {
	function pre($list = '', $exit = true) {
		echo '<pre>';
		print_r($list);
		if($exit) die();
	}
}

if (!function_exists('setLangId')) {
    function setLangId($id)
    {
        app()->instance('lang_id', $id);
    }
}

if (!function_exists('getLangId')) {
    function getLangId()
    {
        return request()->cookie('lang_id', 1);
    }
}

if(!function_exists('getLocale')) {
	function getLocale() {
		return request()->header('X-Locale', 'vi');
	}
}

/* Ảnh no avatar */
if(!function_exists('no_image')) {
	function no_image($logo = false) {
		return $logo ? asset('assets/images/logo-expoplus-square.jpg') : asset('assets/images/no-image.png');
	}
}

if(!function_exists('mail_cc')) {
	function mail_cc() {
		return ['vuduchong209305@gmail.com'];
	}
}

if (!function_exists('getLangCode')) {
    function getLangCode(): string
    {
        return app()->getLocale();
    }
}

if(!function_exists('vdh_paginate')) {
	function vdh_paginate($data = null, $total = 0) {
		echo '<div class="mt-2 mb-2">';
	    	echo !empty($data) ? $data->onEachSide(5)->appends($_GET)->links('vendor.pagination.bootstrap-5') : null;
	    	echo "Total: $total data";
	    echo '</div>';
	}
}

if(!function_exists('vdh_input_status')) {
	function vdh_input_status($status = 1, $title = 'Kích hoạt') {
		$checked = $status == 1 ? 'checked' : null;

		echo '<div class="form-group mb-3">';
			echo '<label class="form-label" for="status">Trạng thái</label>';
	        echo '<div class="form-check form-switch">';
	            echo '<input class="form-check-input" type="checkbox" id="status" name="status" value="1" '.$checked.'>';
	            echo '<label class="form-check-label" for="status">'.$title.'</label>';
	        echo '</div>';
        echo '</div>';
	}
}

if(!function_exists('vdh_button_form')) {
	function vdh_button_form()
	{
	    echo "<div class='pt-4 d-flex justify-content-between'>";
	        echo "<button type='submit' class='btn btn-success me-2'>".__('ui.submit')."</button>";
	        echo "<button type='reset' class='btn btn-light'>".__('ui.cancel')."</button>";
	    echo "</div>";
	}
}

if(!function_exists('vdh_tabs_langs')) {
function vdh_tabs_langs()
    {
        echo "<ul class='nav nav-pills nav-justified bg-light' role='tablist'>";
            foreach(LangHelper::getLang() as $key => $lang):
            $key_check = $key == 0 ? 'active' : null;
            echo "<li class='nav-item' role='presentation'>";
                echo "<a class='nav-link {$key_check}' data-bs-toggle='tab' href='#tabs_{$lang->id}' role='tab'>";
                	echo "<img src='{$lang->image}' alt='{$lang->title}' title='{$lang->title}' width='20'>&nbsp;&nbsp;{$lang->title}";
                echo "</a>";
            echo "</li>";
            endforeach;
        echo "</ul>";


    }
}

if(!function_exists('sendResponse')) {

	function sendResponse($data = null, string $message = 'Success') {
		$response = [
			'status'  => true,
			'message' => $message,
			'data'    => $data,
		];

		return response()->json($response, 200, ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'],
        JSON_UNESCAPED_UNICODE);
	}
}

if(!function_exists('sendError')) {

	function sendError(string $message = 'Error', $data = null) {
		$response = [
			'status'  => false,
			'message' => $message,
			'data'    => $data
		];

		return response()->json($response, 200, ['Content-Type' => 'application/json;charset=UTF-8', 'Charset' => 'utf-8'],
        JSON_UNESCAPED_UNICODE);
	}
}

if(!function_exists('strRandom')) {

	function strRandom($length = 10, $timestamp = true) {
		$pool = $time = '';
		if($timestamp) {
			$time = time() . '-';
		}
	    $pool .= '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    return $time . substr(str_shuffle(str_repeat($pool, 5)), 0, $length);
	}
}

if(!function_exists('generateQRCode')) {
	function generateQRCode($length = 10)
	{
	    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
	    return 'QR-'.time().'-'.substr(str_shuffle($characters), 0, $length);
	}
}


if(!function_exists('otp')) {
	function otp($length = 6) {
		return str_pad(random_int(0, 999999), $length, '0', STR_PAD_LEFT);
	}
}

if (!function_exists('vdh_toggle_query_param')) {
    function vdh_toggle_query_param($param = null, $value = null)
    {
        if (empty($param)) {
            return url()->current();
        }

        $query = request()->all();

        // Nếu param hiện tại đang bằng value truyền vào -> remove param
        if (isset($query[$param]) && $query[$param] == $value) {
            unset($query[$param]);
        } else {
            $query[$param] = $value;
        }

        return empty($query)
            ? url()->current()
            : url()->current() . '?' . http_build_query($query);
    }
}

if(!function_exists('vdh_limit_text')) {
	function vdh_limit_text($text, $limit = 50) {
	    if (str_word_count($text, 0) > $limit) {
	        $words = str_word_count($text, 2);
	        $pos   = array_keys($words);
	        $text  = substr($text, 0, $pos[$limit]) . '...';
	    }
	    return $text;
	}
}

if(!function_exists('vdh_hidden_string')) {
	function vdh_hidden_string($data = null) {

		if(!empty($data)) {

			$result = substr($data, 0, 5);
			$result .= "******";

			return $result;
		}
	}
}

if(!function_exists('vdh_meeting_code')) {
	function vdh_meeting_code() {
        do {
	        $code =
	            'EX-' .
	            date('ymd') .
	            '-' .
	            strtoupper(
	                substr(
	                    str_shuffle('ABCDEFGHJKLMNPQRSTUVWXYZ23456789'),
	                    0,
	                    4
	                )
	            );

	    }
	    while(
	        \App\Models\Meeting::where('code',$code)->exists()
	    );

	    return $code;
    }
}

function generateRandomId() {
    // Định dạng mong muốn là 3 nhóm, mỗi nhóm 4 ký tự hexa (hệ 16).
    // Mỗi byte tương đương 2 ký tự hexa.
    // Vì vậy, để có 4 ký tự hexa, chúng ta cần 2 byte.
    return sprintf('%s-%s-%s',
        bin2hex(random_bytes(2)), // Tạo 4 ký tự hexa đầu tiên
        bin2hex(random_bytes(2)), // Tạo 4 ký tự hexa tiếp theo
        bin2hex(random_bytes(2))  // Tạo 4 ký tự hexa cuối cùng
    );
}

/* Format tiền tệ */
if(!function_exists('vdh_format_money')) {

	function vdh_format_money($input = null) {

		if(is_numeric($input)) return number_format($input, 0, '.', '.');
		
	}
}

function formatUsername($username) {
    // 1. Chuyển tất cả thành chữ thường
    $username = strtolower($username);

    // 2. Loại bỏ dấu (xóa dấu tiếng Việt)
    $username = removeVietnameseAccents($username);

    // 3. Loại bỏ khoảng trắng
    $username = preg_replace('/\s+/', '', $username);

    // 4. Giới hạn độ dài tối đa 15 ký tự
    $username = substr($username, 0, 15);

    return $username;
}

function removeVietnameseAccents($str) {
    $accents = [
        'a' => ['à', 'á', 'ả', 'ã', 'ạ', 'ă', 'ằ', 'ắ', 'ẳ', 'ẵ', 'ặ', 'â', 'ầ', 'ấ', 'ẩ', 'ẫ', 'ậ'],
        'e' => ['è', 'é', 'ẻ', 'ẽ', 'ẹ', 'ê', 'ề', 'ế', 'ể', 'ễ', 'ệ'],
        'i' => ['ì', 'í', 'ỉ', 'ĩ', 'ị'],
        'o' => ['ò', 'ó', 'ỏ', 'õ', 'ọ', 'ô', 'ồ', 'ố', 'ổ', 'ỗ', 'ộ', 'ơ', 'ờ', 'ớ', 'ở', 'ỡ', 'ợ'],
        'u' => ['ù', 'ú', 'ủ', 'ũ', 'ụ', 'ư', 'ừ', 'ứ', 'ử', 'ữ', 'ự'],
        'y' => ['ỳ', 'ý', 'ỷ', 'ỹ', 'ỵ'],
        'd' => ['đ'],
        'A' => ['À', 'Á', 'Ả', 'Ã', 'Ạ', 'Ă', 'Ằ', 'Ắ', 'Ẳ', 'Ẵ', 'Ặ', 'Â', 'Ầ', 'Ấ', 'Ẩ', 'Ẫ', 'Ậ'],
        'E' => ['È', 'É', 'Ẻ', 'Ẽ', 'Ẹ', 'Ê', 'Ề', 'Ế', 'Ể', 'Ễ', 'Ệ'],
        'I' => ['Ì', 'Í', 'Ỉ', 'Ĩ', 'Ị'],
        'O' => ['Ò', 'Ó', 'Ỏ', 'Õ', 'Ọ', 'Ô', 'Ồ', 'Ố', 'Ổ', 'Ỗ', 'Ộ', 'Ơ', 'Ờ', 'Ớ', 'Ở', 'Ỡ', 'Ợ'],
        'U' => ['Ù', 'Ú', 'Ủ', 'Ũ', 'Ụ', 'Ư', 'Ừ', 'Ứ', 'Ử', 'Ữ', 'Ự'],
        'Y' => ['Ỳ', 'Ý', 'Ỷ', 'Ỹ', 'Ỵ'],
        'D' => ['Đ']
    ];

    foreach ($accents as $nonAccent => $accented) {
        $str = str_replace($accented, $nonAccent, $str);
    }

    return $str;
}

function vdh_treeview($data = [], $route = 'product.category', $parent_id = null, $id = null, $type = null)
{
    switch ($route) {

        case 'product.category':
            $object = 'detail';
            break;
        case 'menu_value':
            $object = 'menuValueDetailByLang';
            break;
        default:
            break;
    }

    $traverse = function ($categories, $prefix = null) use (&$traverse, $parent_id, $id, $object, $type) {

        foreach ($categories as $category) {

            echo "<option value='{$category->id}'";
                echo $category->id == $parent_id ? 'selected' : null;
                if($type == 'category') {
                    echo $category->id == $id ? ' disabled' : null;
                }
                echo $category->status != 1 ? 'disabled' : null;
            echo ">$prefix ";
            echo isset($category->$object->title) ? $category->$object->title : null;
            echo "</option>";

            $traverse($category->children, $prefix.'--');
        }
    };

    return $traverse($data);
}

function vdh_category_list($data = [], $route = 'product.category')
{
    switch ($route) {
        case 'product.category':
            $object = 'detail';
            $route_index = 'product.category.index';
            break;
        default:
            break;
    }

    $traverse = function ($categories, $prefix = null) use (&$traverse, $route, $object, $route_index) {

        foreach ($categories as $category) {
            
            echo "<tr>";

                echo "<td class='text-center'>";
                    echo "<input type='checkbox' class='form-check-input checkbox_id' value='{$category->id}'>";
                echo "</td>";

                $avatar = !isset($category->avatar) ? no_image() : asset($category->avatar);

                echo "<td>";
                    echo "<img src='{$avatar}' width='100%'>";
                echo "</td>";

                echo "<td>";
                    if($prefix == null) echo "<b>";
                    echo "<a class='text-success' href=".(route($route.'.create', ['id' => $category->id])).">" .(!isset($category->$object->title) ? null : $prefix .' '. $category->$object->title). "</a>";
                    if($prefix == null) echo "</b>";

                    echo "<br>";
                    echo "<small>(".($category->code).")</small>";
                echo "</td>";

                echo "<td>".($category->$object->description ?? null)."</td>";

                echo "<td>".vdh_status($category->status)."</td>";

                echo "<td>";
                    echo vdh_label_button(route($route.'.create', ['id' => $category->id]), route($route.'.delete', ['id' => $category->id]));
                echo "</td>";

            echo "</tr>";

            $traverse($category->children, $prefix.'--');
        }
    };

    return $traverse($data);
}

if(!function_exists('vdh_status')) {
	function vdh_status($status = 0) {
		switch ($status) {
			case 1:
				return "<span class='badge bg-success-subtle text-success fw-semibold rounded-pill'>Active</span>";
				break;
			default:
				return "<span class='badge bg-danger-subtle text-danger fw-semibold rounded-pill'>Lock</span>";
				break;
		}
	}
}

if(!function_exists('vdh_user_type')) {
	function vdh_user_type($type = 1, $name = 'Exhibitor') {
		switch ($type) {
			case 1:
				return "<span class='badge bg-success text-uppercase'>".$name."</span>";
				break;
			case 2:
				return "<span class='badge bg-warning text-uppercase'>".$name."</span>";
				break;
			default:
				return "<span class='badge bg-primary text-uppercase'>".$name."</span>";
				break;
		}
	}
}

if(!function_exists('vdh_purchased')) {
	function vdh_purchased($status = 0) {
		switch ($status) {
			case 1:
				return "<span class='badge bg-info-subtle text-info fw-semibold rounded-pill'>Chờ thanh toán</span>";
					break;
			case 2:
				return "<span class='badge bg-success-subtle text-success fw-semibold rounded-pill'>Đã thanh toán</span>";
				break;
			case 3:
				return "<span class='badge bg-danger-subtle text-danger fw-semibold rounded-pill'>Đã hủy</span>";
				break;
			default:
				
		}
	}
}

if(!function_exists('vdh_label_button')) {
	function vdh_label_button($route_edit = null, $route_del = null) {
		if(!empty($route_edit)) {
	    	echo "<a href='{$route_edit}' aria-label='anchor' class='btn btn-icon btn-sm bg-primary-subtle me-1' data-bs-toggle='tooltip' data-bs-original-title='Edit'>
	            <i class='ti ti-pencil fs-14 text-primary'></i>
	        </a>";
	    }
	    
	    if(!empty($route_del)) {
	    	echo "<a href='{$route_del}' aria-label='anchor' class='btn btn-icon btn-sm bg-danger-subtle delete_item' data-bs-toggle='tooltip' data-bs-original-title='Delete' onclick='return confirm(`Xác nhận xóa ?`)'>
	            <i class='ti ti-trash text-danger'></i>
	        </a>";
	    }
	}
}

if(!function_exists('extractDriveFileId')) {
	function extractDriveFileId($url)
	{
        if (preg_match('/\/d\/([a-zA-Z0-9_-]+)/', $url, $matches)) {
            return $matches[1];
        }

        if (preg_match('/\/folders\/([a-zA-Z0-9_-]+)/', $url, $matches)) {
            return $matches[1];
        }

        return null;
	}
}

if(!function_exists('vdh_upload_avatar')) {
	function vdh_upload_avatar($avatar = null, $name = 'avatar')
	{
	    echo "<div class='d-flex align-items-start align-items-center gap-4 group_image'>
				<a href='".(!empty($avatar) ? viewImage($avatar) : no_image())."' data-fancybox='gallery'>
					<img src='".(!empty($avatar) ? viewImage($avatar) : no_image())."' alt='user-avatar' class='d-block w-px-100 h-px-100 object-fit-cover border rounded preview'>
				</a>
	            
	            <input type='hidden' name='".$name."_current' class='image_value' value='$avatar'>
	            <div class='button-wrapper'>
	                <label for='$name' class='btn btn-secondary btn-sm me-2 mb-2' tabindex='0'>
	                    <span class='d-none d-sm-block'>".__('ui.select')."</span>
	                    <i class='ti ti-upload d-block d-sm-none'></i>
	                    <input type='file' id='$name' class='d-none account-file-input $name' name='$name' accept='.jpg, .jpeg, .png, .webp'>
	                </label>
	                <button type='button' class='btn btn-outline-secondary btn-sm remove_image mb-2'>
	                    <i class='ti ti-refresh-dot d-block d-sm-none'></i>
	                    <span class='d-none d-sm-block'>".__('ui.remove')."</span>
	                </button>
	                <div class='text-muted small' style='font-size:10px'>JPG, JPEG, PNG, WEBP. Kích thước < 2MB</div>
	            </div>
	        </div>";
	}
}

if(!function_exists('vdh_upload_ckfinder')) {
	function vdh_upload_ckfinder($avatar = null, $name = 'avatar')
	{
	    echo "<div class='d-flex align-items-start align-items-center gap-4 group_image mb-3'>
				<a href='".($avatar ?? no_image())."' data-fancybox='gallery'>
					<img src='".($avatar ?? no_image())."' alt='image' class='d-block w-px-200 object-fit-cover rounded preview'>
				</a>
	            
	            <input type='hidden' name='$name' class='image_value' value='$avatar'>
	            <div class='button-wrapper'>
	                <label for='$name' class='btn btn-secondary btn-sm me-2 mb-2 choose_image' tabindex='0'>
	                    <span class='d-none d-sm-block'>".__('ui.select')."</span>
	                    <i class='ti ti-upload d-block d-sm-none'></i>
	                </label>
	                <button type='button' class='btn btn-outline-secondary btn-sm remove_image mb-2'>
	                    <i class='ti ti-refresh-dot d-block d-sm-none'></i>
	                    <span class='d-none d-sm-block'>".__('ui.remove')."</span>
	                </button>
	                <div class='text-muted small' style='font-size:10px'>JPG, JPEG, PNG, WEBP. Kích thước < 2MB</div>
	            </div>
	        </div>";
	}
}

if (!function_exists('viewImage')) {
    function viewImage($path, $default = null)
    {
        if (empty($path)) {
            return $default ?? no_image();
        }

        // Nếu là full URL
        if (filter_var($path, FILTER_VALIDATE_URL)) {
            return $path;
        }

        // Nếu là protocol relative //cdn...
        if (str_starts_with($path, '//')) {
            return 'https:' . $path;
        }

        // Nếu đã có storage
        if (str_starts_with($path, 'storage/')) {
            return asset($path);
        }

        // Nếu là local path
        return asset('storage/' . ltrim($path, '/'));
    }
}

function navActive($route) {
    return request()->routeIs($route)
        ? 'text-indigo-600 font-semibold'
        : '';
}

function notifyCustom($user, $title, $message, $url = null, $type = 'system')
{
    $user->notify(
        new \App\Notifications\SystemNotification([
            'title' => $title,
            'message' => $message,
            'url' => $url,
            'type' => $type
        ])
    );
}

function activityLog($subject, $action, $description = null, $properties = [])
{
    return \App\Models\ActivityLogs::create([
        'subject_type' => get_class($subject),
        'subject_id' => $subject->id,

        'causer_type' => auth('api')->check() ? get_class(auth('api')->user()) : null,
        'causer_id' => auth('api')->id(),

        'action' => $action,
        'description' => $description,
        'properties' => json_encode($properties, true)
    ]);
}

function isActiveMenu($pattern)
{
    return request()->is($pattern) ? 'active' : '';
}

function convertToUtc($datetime, $timezone = 'Asia/Ho_Chi_Minh')
{
    return \Carbon\Carbon::parse($datetime, $timezone)
        ->setTimezone('UTC')
        ->format('Y-m-d\TH:i:s');
}

?>