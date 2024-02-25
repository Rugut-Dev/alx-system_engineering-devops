# client config file with puppet
$ssh_config_file = '/etc/ssh/ssh_config'

file_line { 'Declare identity file':
  path    => $ssh_config_file,
  line    => '    IdentityFile ~/.ssh/school',
  match   => '^#?\s*IdentityFile\s+.*$',
  ensure  => 'present',
}

file_line { 'Turn off passwd auth':
  path    => $ssh_config_file,
  line    => '    PasswordAuthentication no',
  match   => '^#?\s*PasswordAuthentication\s+.*$',
  ensure  => 'present,'
}
