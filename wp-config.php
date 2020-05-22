<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define( 'DB_NAME', 'b11_25832314_nxbdhsp' );

/** Username của database */
define( 'DB_USER', 'b11_25832314' );

/** Mật khẩu của database */
define( 'DB_PASSWORD', 'nxbdhsp2020' );

/** Hostname của database */
define( 'DB_HOST', 'sql102.byethost.com' );

/** Database charset sử dụng để tạo bảng database. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'AZLzLghC5xFk=Qkdp.P6N7|]Fc]Y,{r508y0~6l?-g;,goJRkfP4}@;u4!fJ2!{H' );
define( 'SECURE_AUTH_KEY',  'pC:yNibtCK>G#EB|ZNL/}~oJgzuPPm:j&V//yZD6!1PSiLqQ@Jn:>e`(ZRis;7!%' );
define( 'LOGGED_IN_KEY',    's-C$+/iD_N-sKV~OJQ)0xLP4>MAI6`nO=0>+9D&<GhQ^04@-GJvjk%_Q0m~#=; q' );
define( 'NONCE_KEY',        '[/J_9e{(Fk;auyV9nX6&R3n2l=qQ?#+f^8f%hf% O>Pa|~l7!hSW_SPw[.OoK +Z' );
define( 'AUTH_SALT',        '_?i tsFI ` xq~yI4{ W,kTt*a}B|~F_oqMiDY(h(,]eJ H$_lZy!K{7xg|Vts~]' );
define( 'SECURE_AUTH_SALT', 'GPyN[-}F3saN4%g$ 55&Xf*~OKsk.$jIhq/%lC%}Z3]5VFZatu|c-P]Ln9uk{vb3' );
define( 'LOGGED_IN_SALT',   '5s{J=(tc8?96<)pGMUh`M*`Stg&U871z<6OP_7:~a2 Nucg vosa39eG0w{R?ETH' );
define( 'NONCE_SALT',       '2{&efHVbIYRJ 5 `]Zn%J[<~qje[u$*Q.I^_54?m]lT&fP/C<m,!f~8YRwC2KG@(' );

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');
