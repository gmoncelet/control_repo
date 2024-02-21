class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  #host {'web.puppet.vm':
  #  ensure => present,
  #  ip     => '172.18.0.2'
  #}
  #host {'db.puppet.vm':
  #  ensure => present,
  #  ip     => '172.18.0.3'
  #}

  host {'web.puppet.vm':
    ensure   => present,
    subnet   => '172.18.0.0/24'
    ip_range => '172.18.0.2/24'
  }
  host {'db.puppet.vm':
    ensure   => present,
    subnet   => '172.18.0.0/24'
    ip_range => '172.18.0.3/24'
  }
}
