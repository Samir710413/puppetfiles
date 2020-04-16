class user {
user { 'TestUser':
name => 'xyz',
ensure =>present,
}

file {'xyz':
name=>'/tmp/abc.txt',
mode =>'0777',
owner => 0,
ensure =>present,
}
}


class package { 

package {'httpd':
ensure => 'installed',
}

service { 'httpd':
ensure => 'running',
enable => 'true',
}

}

include user 
include package






