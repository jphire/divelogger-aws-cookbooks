Chef::Log.info("****** INITIALIZING MONGODB.******")
#mongodb recipes
include_recipe "mongodb3::default"

# admin = node['divelogger']['mongo_admin']
# users = node['divelogger']['mongo_users']

# create admin user that can add more users
# mongodb_user 'admin_divelogger' do
# 	username admin['username']
# 	password admin['password']
#     roles admin['roles']
#     database admin['database']
#     connection node['mongodb']
#     action :add
# end

# create user role for divelogger
# users.each do |user|
#   mongodb_user user['username'] do
#     username user['username']
#     password user['password']
#     roles user['roles']
#     database user['database']
#     connection node['mongodb']
#     action :add
#   end
# end

# mongodb custom configruration if needed
# mongodb_instance "mongodb" do
#   port node['application']['port']
# end
