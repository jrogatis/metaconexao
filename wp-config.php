<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache

/** Enable W3 Total Cache Edge Mode */
define('W3TC_EDGE_MODE', true); // Added by W3 Total Cache

/** Enable W3 Total Cache */
 //Added by WP-Cache Manager

 //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/var/www/html/metaconexao/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager
define('REVISR_GIT_PATH', ''); // Added by Revisr
define('REVISR_WORK_TREE', '/var/www/html/metaconexao/'); // Added by Revisr
// sera que tenho que deixar isto aqui ?
define('WP_HOME','http://www.metaconexao.com.br');
define('WP_SITEURL','http://www.metaconexao.com.br/metaconexao');

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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'metaconexao');

/** MySQL database username */
define('DB_USER', 'jrogatis');

/** MySQL database password */
define('DB_PASSWORD', 'Nick3108');

/** MySQL hostname */
define('DB_HOST','db-metaconexao.cffhgmhnjzas.us-east-1.rds.amazonaws.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@D|}5(8`wY:>x-4)fjjT{8[S79~doyBn}09$V||oM/+( n%]Y&M@&S1E}6#P-$<y');
define('SECURE_AUTH_KEY',  'XXp3f(XRsp!qxunN~fM<I5kmNT6eJcNOqoxKH=[-ox}J~&~1[R`qpg,2FFbhH]oN');
define('LOGGED_IN_KEY',    ' jclRoV(--wQPYG>?2jS@S_Y:++Qy!Gm7--%/(^<vyE}.d|s_<cA*fnD#3~fZCnw');
define('NONCE_KEY',        'tBxQG|Ivyq9ItIHmJbn9l+[[|:_?7Z^U}5,nXT1~( !#Dn/6-_vCoZs@X^xt/YNb');
define('AUTH_SALT',        ')?.j4AK+;hv4@cLWUg:dru|mq2+s6`Cxc#|{,ucUtgK}H@B,~.bsneTI8{sVF1 D');
define('SECURE_AUTH_SALT', '+)ybsD.ov4|$9/f7gBzJCKRm<_C|8]F7$-l{&t~(qbOV.qK*v;T TDvRc<mFqF!{');
define('LOGGED_IN_SALT',   'YHV)x5guuJMAj.6|+NP%hGWXr61jk5}m?+N2[wwBWb`LfH->pTcADT-Kl|k9ie<L');
define('NONCE_SALT',       't3t:@r,Ar:@I^LP^0@|1&D<fX9+@[Y~yDT-/J/+n7$Mx3/~dKF_~@4,i?k6-s5$6');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'mt_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);
define( 'WP_DEBUG_LOG', true );
 define('WP_DEBUG_DISPLAY', true);
//define('RELOCATE', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
