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
define( 'DB_NAME', 'nxb' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         'd!@9#7xO mfIb~--NRWmT7A;(+hi+`;|#AH~M*wf|xPx6t>M[$#bo8<.rZFK,rv2' );
define( 'SECURE_AUTH_KEY',  'kovx|Gn9{cIV`E6!GQp]&st+J^Dr>:@&e<@P3~-~g~-5ZDfazf^gzc0Pn26^q>Al' );
define( 'LOGGED_IN_KEY',    'z-QhF1=kA| 1t5ipy`s.QxY~(cvfakSV4SfB|NIq#(FU%%,L%7=,1S>r*E9MbZ(g' );
define( 'NONCE_KEY',        '<uwuUBi6bOB)zA* EhR,sZgTqQgyR+@fFJ+:)_V@S<?,q;J)b]:z7NI63M7=j5.I' );
define( 'AUTH_SALT',        '(%F{O{R{uq`ejm<L7X;t(/OHjN[k/#$BrDd)79.-<|VVM5x(]B<DQw,..:?8Rh$2' );
define( 'SECURE_AUTH_SALT', '5&j_q7i=443N00v_^$CBXc$@4Cj-E,?j[DK<#H=>bOYrU3-FTWqc`C{~M=yQroug' );
define( 'LOGGED_IN_SALT',   'Y$;q:yab)3!cB3HPV+k.])+E(ipjvk3Mt]V?) zMh=+H*{DOQG+lq[E+!Y_Y-Yh%' );
define( 'NONCE_SALT',       'gt&.&$x`dOR[994l)TFgGs|W|9**vjwb0OT|G$zjIzt~9jHWz<km3M+}&-jjs)Z>' );

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
