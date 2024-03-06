# 0-strace_is_your_friend.pp

exec { 'fix_apache':
  command     => 'sed -i "s/SomeOffensiveCode/CorrectCode/g" /path/to/apache_config.conf',
  refreshonly => true,
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => Exec['fix_apache'],
}
