<?php 
namespace App\Helpers;

class MenuHelper {

	private static function dashboard_menu($menu = [])
	{
		if (RoleHelper::checkRole('dashboard')) {
			
			$menu[] = array(
				'title'   => __('menu_admin.home'),
				'url'     => route('dashboard'),
				'icon'    => 'ti-home',
				'active'  => 'hadmin/dashboard',
				'submenu' => []
			);
		}

		return $menu;
	}

	private static function admin_menu($menu = []) {

		$msub = array();

		if (RoleHelper::checkRole('admin.index')) {

			$msub[] = array(
				'url'    => route('admin.index'),
				'title'  => 'Tài khoản',
				'active' => 'hadmin/admin',
			);
		}

		if (RoleHelper::checkRole('admin.role.index')) {

			$msub[] = array(
				'url'    => route('admin.role.index'),
				'title'  => 'Nhóm quyền',
				'active' => 'hadmin/admin/role/*',
			);
		}

		if (count($msub) > 0) {

			$menu[] = array(
				'title'   => 'Quản trị viên',
				'icon'    => 'ti-user-star',
				'active'  => 'hadmin/admin/*',
				'submenu' => $msub
			);
		}

		return $menu;
	}

	private static function organizer_menu($menu = []) {

		$msub = array();

		if (RoleHelper::checkRole('organizer.index')) {

			$msub[] = array(
				'url'    => route('organizer.index'),
				'title'  => 'Danh sách',
				'active' => 'hadmin/organizer',
			);
		}

		if (RoleHelper::checkRole('organizer.user.index')) {

			$msub[] = array(
				'url'    => route('organizer.user.index'),
				'title'  => 'Thành viên',
				'active' => 'hadmin/organizer/user',
			);
		}
		
		if (count($msub) > 0) {

			$menu[] = array(
				'title'   => 'Ban tổ chức',
				'icon'    => 'ti-user-pentagon',
				'active'  => 'hadmin/organizer/*',
				'submenu' => $msub
			);
		}

		return $menu;
	}

	private static function exhibition_menu($menu = [])
	{
		$msub = array();

		if (RoleHelper::checkRole('exhibition.index')) {

			$msub[] = array(
				'url'    => route('exhibition.index'),
				'title'  => __('menu_admin.list'),
				'active' => 'hadmin/exhibition/index',
			);
		}

		if (RoleHelper::checkRole('exhibition.create')) {

			$msub[] = array(
				'url'    => route('exhibition.create'),
				'title'  => __('menu_admin.add'),
				'active' => 'hadmin/exhibition/create',
			);
		}

		if (count($msub) > 0) {

			$menu[] = array(
				'title'   => __('menu_admin.exhibition'),
				'url'     => route('exhibition.index'),
				'icon'    => 'ti-tent',
				'active'  => 'hadmin/exhibition/*',
				'submenu' => $msub
			);
		}

		return $menu;
	}

	private static function setting_menu($menu = [])
	{
		$msub = array();

		if (RoleHelper::checkRole('setting.lang.index')) {

			$msub[] = array(
				'url'    => route('setting.lang.index'),
				'title'  => 'Ngôn ngữ',
				'active' => 'hadmin/setting/lang/index',
			);
		}

		if (RoleHelper::checkRole('setting.index')) {

			$msub[] = array(
				'url'    => route('setting.index'),
				'title'  => 'Cấu hình',
				'active' => 'hadmin/setting',
			);
		}

		if (count($msub) > 0) {

			$menu[] = array(
				'title'   => 'Cài đặt',
				'url'     => route('setting.index'),
				'icon'    => 'ti-settings',
				'active'  => 'hadmin/setting/*',
				'submenu' => $msub
			);
		}

		return $menu;
	}

	private static function customer_menu($menu = [])
	{
		if (RoleHelper::checkRole('customer.index')) {
			$menu[] = array(
				'title'   => 'Khách hàng',
				'url'     => route('customer.index'),
				'icon'    => 'ti-users',
				'active'  => 'hadmin/customer/*',
				'submenu' => []
			);
		}

		return $menu;
	}

	private static function activity_menu($menu = [])
	{
		if (RoleHelper::checkRole('activity')) {
			$menu[] = array(
				'title'   => 'Lịch sử',
				'url'     => route('activity'),
				'icon'    => 'ti-history',
				'active'  => 'hadmin/activity/*',
				'submenu' => []
			);
		}

		return $menu;
	}

	public static function getAllMenu() {

		$menu = [];
		$menu = self::dashboard_menu($menu);
		$menu = self::admin_menu($menu);
		$menu = self::organizer_menu($menu);
		$menu = self::exhibition_menu($menu);
		$menu = self::customer_menu($menu);
		$menu = self::setting_menu($menu);
		$menu = self::activity_menu($menu);
		
		return $menu;
	}
}


?>