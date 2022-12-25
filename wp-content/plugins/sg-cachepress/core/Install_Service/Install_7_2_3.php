<?php
namespace SiteGround_Optimizer\Install_Service;

class Install_7_2_3 extends Install {
	/**
	 * The default install version. Overridden by the installation packages.
	 *
	 * @since 7.2.3
	 *
	 * @access protected
	 *
	 * @var string $version The install version.
	 */
	protected static $version = '7.2.3';

	/**
	 * Run the install procedure.
	 *
	 * @since 7.2.3
	 */
	public function install() {
		// Update install service option.
		update_option( 'sgo_install_service', 1 );
	}
}
