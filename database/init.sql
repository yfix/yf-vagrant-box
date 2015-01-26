# We include default installations of WordPress with this Vagrant setup.
# In order for that to respond properly, default databases should be
# available for use.
CREATE DATABASE IF NOT EXISTS `yf_for_unit_tests`;
GRANT ALL PRIVILEGES ON `yf_for_unit_tests`.* TO 'yf'@'localhost' IDENTIFIED BY 'yf';

# Create an external user with privileges on all databases in mysql so
# that a connection can be made from the local machine without an SSH tunnel
GRANT ALL PRIVILEGES ON *.* TO 'external'@'%' IDENTIFIED BY 'external';
