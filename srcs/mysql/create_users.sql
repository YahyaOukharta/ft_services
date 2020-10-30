CREATE DATABASE phpmyadmin;
CREATE DATABASE wordpress;

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'%' IDENTIFIED BY 'pmapass2';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_admin'@'%' IDENTIFIED BY 'wp_admin';

/* Adding users to wordpress */
-- INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
--     (2, 'admin', '$P$BYXDvKuWHbCIS/kHDlFtRg.eeJ.wam/', 'admin', 'admin@users.cc', '', NOW(), '', 0, 'admin'),
--     (5, 'user1', '$P$Bd.pmNjUyz3Yrdm8ZmaCE6YvoRzi...', 'user1', 'user1@users.cc', '', NOW(), '', 0, 'user1'),
--     (6, 'user2', '$P$BxfFVy1dqx/nelIqsgACMmc0L8aR940', 'user2', 'user2@users.cc', '', NOW(), '', 0, 'user2');

-- INSERT INTO `wp_usermeta` (`user_id`, `meta_key`, `meta_value`) VALUES
--     (2, 'nickname', 'admin'),
--     (2, 'rich_editing', 'true'),
--     (2, 'syntax_highlighting', 'true'),
--     (2, 'comment_shortcuts', 'false'),
--     (2, 'admin_color', 'fresh'),
--     (2, 'show_admin_bar_front', 'true'),
--     (2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
--     (2, 'wp_user_level', '10'),
--     (5, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
--     (5, 'wp_user_level', '7'),
--     (6, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
--     (6, 'wp_user_level', '2');
FLUSH PRIVILEGES;