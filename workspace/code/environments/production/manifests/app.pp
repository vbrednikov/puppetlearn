node 'node1' {

    include basic
    include tomcat
 #   include prefs

}

node 'node2' {

    include basic
    include tomcat

}

node default {

    notify{"default node":

#       message => "***** DEFAULT BLOCK *****"

    }

    include basic

}
