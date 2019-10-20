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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'woocomercee' );

/** MySQL database username */
define( 'DB_USER', 'woocomercee' );

/** MySQL database password */
define( 'DB_PASSWORD', 'woocomercee' );

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
define( 'AUTH_KEY',         ';`<?xitAfaDUicm=U{$4jY1n&vnp&$FrD=^#aH~!6M|m;PXj4}B6wbr6bv]Q-46+' );
define( 'SECURE_AUTH_KEY',  'nb-zyzO[nTe?1mWa3wto%f !XW=j=RmRg% w5e4M8GI(XQ(k_oYjh*[!v?.W~o{[' );
define( 'LOGGED_IN_KEY',    'BdV{XSUl,J=^K<4kILwQ5Nn+7_a_qhk^SR`R{FvLXZN_?Y)I*.jXd>q-Eq;)Tn<T' );
define( 'NONCE_KEY',        'U7 :55TdAa#:]|$!;RP,D>m Uw+BrI ?l)gQZ;e[SOqfeN^|Z(!ub;7cFIUE(+d)' );
define( 'AUTH_SALT',        'vq>il@MMFIa7u<L%R}+K#CZ>ShX+Bl3xEvU_Fo)_chr54^@izDCivMi3RDf>;0]Q' );
define( 'SECURE_AUTH_SALT', 'fjoTzl%7l=Vfj.1=8&/R&e7EK^OFa@c]5m<awk,4[c4}7rpLN1`rL@G_8Wn]+?+J' );
define( 'LOGGED_IN_SALT',   '}fRlr%0SS=SN1FjP.tSi=:MY-0AzR4@%WE<In-hS8h_`rvKpJCVGkr($RY<;pT1]' );
define( 'NONCE_SALT',       ';R)#TLwZof?fpYYNsQ]06uz4_IVyG6li)!zl]VNf13wGf%404JR5Zm{(DU$osR:W' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
