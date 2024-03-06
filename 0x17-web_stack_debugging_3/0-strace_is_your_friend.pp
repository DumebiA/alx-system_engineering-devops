# Fixing Apache returning a 500 error

exec { 'fix error':
  provider => 'shell',
  command  => 'sed -i "s/SomeOffensiveCode/CorrectCode/g" /path/to/apache_config.conf'
}
