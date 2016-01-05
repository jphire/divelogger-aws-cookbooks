
# install node modules
execute 'npm install' do
	cwd "#{node['divelogger']['docroot_dir']}"
	command 'sudo npm install'
end

execute 'install grunt' do
	cwd "#{node['divelogger']['docroot_dir']}"
	command 'sudo npm install -g grunt-cli'
end

# create js and css bundles
execute 'create js bundle' do
	cwd "#{node['divelogger']['docroot_dir']}"
	command 'sudo grunt build --force'
end

execute 'run' do
	cwd "#{node['divelogger']['docroot_dir']}"
	command 'node api/server.js &'
end

execute 'run-web' do
	cwd "#{node['divelogger']['docroot_dir']}"
	command 'node web.js &'
end
