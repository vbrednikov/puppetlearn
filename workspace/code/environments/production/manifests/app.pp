node 'node1' {

    include base
    class {'::tomcat':
        xmx           => '128m',
        xms           => '60m',
        user          => 'tomcat',
        group         => 'root',
        service_state => 'running',
    }

    tomcat::deploy {'sysfoo':
        deploy_url => 'https://3-126643644-gh.circle-artifacts.com/0/tmp/circle-artifacts.uNl0Lc6/sysfoo.war'
    }
}

node 'node2' {

    include base
    class {'::tomcat':
        xmx           => '110m',
        xms           => '61m',
        user          => 'tomcat',
        group         => 'tomcat',
        service_state => 'running',
    }

    tomcat::deploy {'sysfoo':
        deploy_url => 'https://3-126643644-gh.circle-artifacts.com/0/tmp/circle-artifacts.uNl0Lc6/sysfoo.war'
    }
}


node default {

    notify{'default node':  }

    include base

}
