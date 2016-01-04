
# set role for the instance, one of: standalone, document, keyvalue, graph, webserver, worker, fileserver
default['divelogger']['role'] = 'document'

# set the modules to be included in the VM. Possible values include:
# mongodb
# All of these must be included for the standalone LifeEngine to work.
default['divelogger']['modules'] = ['mongodb']

# create user in the server, TODO: create different users for other roles?
# default['divelogger']['user'] = 'web_admin'
# default['divelogger']['group'] = 'web_admin'

# mongo attributes - credentials are overwritten at deploy time
# Note that YOU SHOULD overwrite the default password
# default['divelogger']['mongo_admin'] = {
# 	'username' => 'divelogger_admin',
# 	'password' => 'thisisoverridden', 
# 	'roles' => ['userAdminAnyDatabase'],
# 	'database' => 'admin'
# }

# default['divelogger']['mongo_users'] = [
# 	{
# 		'username' => 'divelogger_user', 
# 		'password' => 'diveloggerPassword', 
# 		'roles' => ['readWrite'], 
# 		'database' => 'divelogger'
# 	}
# ]
# default['mongodb']['config']['auth'] = true
