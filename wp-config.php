<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dbojqublqyvjlo' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '(}-kBw5y4(74;/utTnp/LdpXGOsdZC|s6|#k#_%rV8@n*&#CaL<;,~:1~awYYh0J' );
define( 'SECURE_AUTH_KEY',   'F1HuID!f*3|Q?G^2}yWkHtpe=x5xUA/OD`*mX2L3l0El@9AQaCtUFNyYw`xqXpv3' );
define( 'LOGGED_IN_KEY',     '.U%=Q&q;t$xY|YKuJqcb]jK~# oW&<+9ZkoTrn^o@#>$HSn:$*z6`|:A_w4:{e*Q' );
define( 'NONCE_KEY',         ' ; km2IpfFb5[d4|b.FDr>/QF30mR6?vPVQ#p??6^I((wI~[`+,?t`X*hhJn$!W:' );
define( 'AUTH_SALT',         'Jmio|dKrQa]bnHbjhdGX0]W&3mo{PymtE&F1@eS0bd~Mm1atAMK$W87`w0:>sLp%' );
define( 'SECURE_AUTH_SALT',  'UI2#|NbT[TNoi%l5Sz(>iOH]{CXwy%~8#OvrH0YuQ6<53F={y*4J$ZP?;^!Utls_' );
define( 'LOGGED_IN_SALT',    'c;H8E(UpHkZbJH)EhS`dyF{e4$MJ)t;@BM#oJ`& 91hY:x<)#hISD6ZdK+(vVdex' );
define( 'NONCE_SALT',        '/>n[!WC&&j3>Y)14|4E? TThzWd)laz?6W7Tk.R Q(@{e*#wQwyRzkf`#U%1O$S ' );
define( 'WP_CACHE_KEY_SALT', '-kRlkfL-8]ipGwDXs?kP~*H*ak|+k:v@l~4Xt/ngO^&-l3[ZFy{ ^7]I)p7h0o!B' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'oun_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
@include_once('/var/lib/sec/wp-settings-pre.php'); // Added by SiteGround WordPress management system
require_once ABSPATH . 'wp-settings.php';
@include_once('/var/lib/sec/wp-settings.php'); // Added by SiteGround WordPress management system
