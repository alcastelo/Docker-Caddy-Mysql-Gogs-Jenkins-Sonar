# create databases
CREATE DATABASE IF NOT EXISTS `gogs`;
CREATE DATABASE IF NOT EXISTS `sonarqube`;

# create root user and grant rights

flush privileges;
CREATE USER 'dev'@'%' IDENTIFIED BY 'dev';
GRANT ALL ON gogs.* TO 'dev'@'%';

flush privileges;
CREATE USER 'sonar'@'%' IDENTIFIED BY 'sonar';
GRANT ALL ON sonar.* TO 'sonar'@'%';