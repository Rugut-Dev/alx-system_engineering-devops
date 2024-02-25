# client config file with puppet
$s_config_f = '/etc/ssh/ssh_config'

file_line { 'Declare identity file':
  ensure => 'present',
  path   => $s_config_f,
  line   => '    IdentityFile ~/.ssh/school'
}

file_line { 'Turn off passwd auth':
  ensure => 'present,'
  path   => $s_config_f,
  line   => '    PasswordAuthentication no'
}
