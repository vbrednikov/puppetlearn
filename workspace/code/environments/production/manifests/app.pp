node 'node1' {

 #   include basic
    include base
    include tomcat

}

node 'node2' {

    include base
    include tomcat

}


node default {

    notify{"default node":  }

    include base

}
