# client config file with puppet
$s_config_f = '/etc/ssh/ssh_config'

file_line { 'Declare identity file':
  path    => $s_config_f,
  line    => '    IdentityFile ~/.ssh/school',
  ensure  => 'present',
}

file_line { 'Turn off passwd auth':
  path    => $s_config_f,
  line    => '    PasswordAuthentication no',
  ensure  => 'present,'
}
