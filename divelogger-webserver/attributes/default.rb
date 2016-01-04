
# set role for the instance, one of: standalone, document, keyvalue, graph, webserver, worker, fileserver
default['divelogger']['role'] = 'webserver'

# set the modules to be included in the VM. Possible values include:
# All of these must be included for the standalone divelogger to work.

# create user in the server, TODO: create different users for other roles?
default['divelogger']['user'] = 'web_admin'
default['divelogger']['group'] = 'web_admin'

default['divelogger']['name'] = 'divelogger'
default['divelogger']['config'] = 'divelogger.conf'

default['divelogger']['use_https'] = false
	
default['divelogger']['environment'] = 'development'
default['divelogger']['server_url'] = 'http://localhost'
default['divelogger']['rest_url'] = 'http://localhost/api'

default['divelogger']['aws_access_key_id'] = 'placeholder_key'
default['divelogger']['aws_secret_key'] = 'placeholder_secret'
# default['divelogger']['aws-sdk1-region'] = 'dynamodb.eu-west-1.amazonaws.com'
default['divelogger']['aws_sdk_region'] = 'eu-west-1'
default['divelogger']['files_uri'] = 'localhost/files'
default['divelogger']['media_uri'] = 'localhost/media'
default['divelogger']['files_dir'] = '/var/www/files/documents'
default['divelogger']['media_dir'] = '/var/www/files/media'
default['divelogger']['bundle_dir'] = '/opt/bundles'

# this has to be hard coded for now, because node['apache']['document_root'] 
# is pointing to /var/www/html, which is not where the app is installed
default['divelogger']['docroot_dir'] = '/srv/www/divelogger/current'

# custom myqsl attributes for divelogger
# Note that YOU SHOULD overwrite the default password
default['divelogger']['mongodb_host'] = 'localhost'
default['divelogger']['mongodb_port'] = '27017'
default['divelogger']['mongodb_user'] = 'divelogger_user'
default['divelogger']['mongodb_pass'] = 'diveloggerPassword'
default['divelogger']['mongodb_database'] = 'divelogger'

