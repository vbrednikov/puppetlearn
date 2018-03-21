node 'node1' {

    include base
    class {'::tomcat':
        xmx            => '128m',
        xms            => '60m',
        user           => 'tomcat',
        group          => 'root',
        service_state  => 'running',
    }
}

node 'node2' {

    include base
    class {'::tomcat':
        xmx            => '110m',
        xms            => '61m',
        user           => 'tomcat',
        group          => 'tomcat',
        service_state  => 'running',
    }
}


node default {

    notify{"default node":  }

    include base

}
