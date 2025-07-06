# 2-puppet_custom_http_response_header.pp
# Install Nginx and add X-Served-By header with hostname using Puppet

package { 'nginx':
  ensure => installed,
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
}

exec { 'insert_custom_header':
  command => "sed -i '/location \\/ {/a \\\\tadd_header X-Served-By \"$(hostname)\" always;' /etc/nginx/sites-available/default",
  unless  => "grep 'add_header X-Served-By' /etc/nginx/sites-available/default",
  require => Package['nginx'],
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => Exec['insert_custom_header'],
}
