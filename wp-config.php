<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'b11_25832314_nxbdhsp' );

/** MySQL database username */
define( 'DB_USER', 'b11_25832314' );

/** MySQL database password */
define( 'DB_PASSWORD', 'nxbdhsp2020' );

/** MySQL hostname */
define( 'DB_HOST', 'sql102.byethost.com' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'q ?a#4C]LP*.oTx]o2CStPEqD}*-H0-I&+#}]b7KFz6(%o<Uu?6dTZju[I*5ue!(' );
define( 'SECURE_AUTH_KEY',  'iXq]9g3=])yky4M2&(q:P^F^%brDef5nLK8t23SAEK^Q=tE8tt*yx 0aSdMBR>@e' );
define( 'LOGGED_IN_KEY',    'Fb1$[0MXdLot9lWZ/OmA/Ap<TFy;|Z`Zr;k3o)cudXu7o]~/.P1<o(gvU:V}ReU@' );
define( 'NONCE_KEY',        'FiTA9BNQ(U6O<CFzBW&7NIk&:}T;r/-@+_1?=k9|[G{Ws.CKuTY1Y|IZzV-81By|' );
define( 'AUTH_SALT',        'Y1V|390YX?tQ(m`4WCQPGr*_VKaV(Ge ^#pZYJ)y]WcJ(Zxoapro]eO28<t.$jD_' );
define( 'SECURE_AUTH_SALT', ' ,.o8U%[1;l:ZLsJpKfntDEZQ#9z{5Rwvr:)JsA%iaH:.{WS2Kmfy;DPQ]58A;q)' );
define( 'LOGGED_IN_SALT',   'avTQt-B9vd+Ol{f K~p9rwEOtGL=R{/sf%@d&A*.f @UuV7!s&CVL|iUIEu<jL;1' );
define( 'NONCE_SALT',       'zb)_e;>zo2.fX|c4`1OITm:g+.E(K4{D?cx8&tU4N}u4m^HFDAAb-ICsviOq7NpA' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
