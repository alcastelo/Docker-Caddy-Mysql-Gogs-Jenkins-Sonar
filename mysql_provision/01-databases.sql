# create databases
CREATE DATABASE IF NOT EXISTS `gogs`;
CREATE DATABASE IF NOT EXISTS `sonarqube`;

# create root user and grant rights

flush privileges;
CREATE USER 'dev'@'localhost' IDENTIFIED BY 'dev';
GRANT ALL ON gogs.* TO 'dev'@'localhost';

flush privileges;
CREATE USER 'sonar'@'localhost' IDENTIFIED BY 'sonar';
GRANT ALL ON sonar.* TO 'sonar'@'localhost';