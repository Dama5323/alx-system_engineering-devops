# 2-puppet_custom_http_response_header.pp
# Puppet manifest to install Nginx and configure it to return a custom header with the hostname

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => File['/etc/nginx/sites-available/default'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('nginx/default.erb'),
  notify  => Service['nginx'],
}

file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
}

# Ensure hostname command is available to template
Facter.add('custom_hostname') do
  setcode do
    Facter::Core::Execution.execute('hostname')
  end
end
