#
class tomcat inherits tomcat::params {

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

}
