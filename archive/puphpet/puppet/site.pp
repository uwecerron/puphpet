$apache_values = $yaml_values['apache']
$beanstalkd_values = hiera_hash('beanstalkd', false)
$cron_values = hiera_hash('cron', false)
$drush_values = hiera_hash('drush', false)
$elasticsearch_values = hiera_hash('elastic_search', false)
$firewall_values = hiera_hash('firewall', false)
$hhvm_values = hiera_hash('hhvm', false)
$mailcatcher_values = hiera_hash('mailcatcher', false)
$mariadb_values = hiera_hash('mariadb', false)
$mongodb_values = hiera_hash('mongodb', false)
$mysql_values = hiera_hash('mysql', false)
$nginx_values = hiera_hash('nginx', false)
$nodejs_values = hiera_hash('nodejs', false)
$php_values = hiera_hash('php', false)
$postgresql_values = hiera_hash('postgresql', false)
$python_values = hiera_hash('python', false)
$rabbitmq_values = hiera_hash('rabbitmq', false)
$redis_values = hiera_hash('redis', false)
$ruby_values = hiera_hash('ruby', false)
$server_values = hiera_hash('server', false)
$solr_values = hiera_hash('solr', false)
$sqlite_values = hiera_hash('sqlite', false)
$usersgroups_values = hiera_hash('users_groups', false)
$vm_values = hiera_hash($::vm_target_key, false)
$yaml_values = loadyaml('/vagrant/puphpet/config.yaml')

import 'nodes/*.pp'
