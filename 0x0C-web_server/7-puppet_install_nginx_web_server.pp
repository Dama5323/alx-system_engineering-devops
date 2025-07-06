# Install and configure Nginx with Puppet (includes index.html, 301 redirection, and custom 404 page)

# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
}

# Ensure index.html file exists and is served
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure custom 404 page exists
file { '/var/www/html/custom_404.html':
  ensure  => file,
  content => "Ceci n'est pas une page\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Replace the Nginx default config with required directives
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @("END"),
    server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;
        index index.html index.htm;

        server_name _;

        location / {
            try_files \$uri \$uri/ =404;
        }

        location /redirect_me {
            return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
        }

        error_page 404 /custom_404.html;

        location = /custom_404.html {
            internal;
        }
    }
    | END
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure nginx service is running
service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
}
