---
nginx:
  home: /srv/www/
  user: www-data
  group: www-data
  sites:
    java_proxy:
      listen_internal: true
      server_name: foo.elb.amazonaws.com bar.elb.amazonaws.com
      locations:
       -
        location: /country
        upstream: country
       -
        location: /foo
        upstream: foo
