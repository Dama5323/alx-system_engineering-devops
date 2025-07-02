#!/usr/bin/env bash
# Connecting without a password

file_line { 'Declare identity file':
  path  => '/root/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^ *IdentityFile',
}

file_line { 'Turn off passwd auth':
  path  => '/root/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^ *PasswordAuthentication',
}
