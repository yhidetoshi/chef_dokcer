require 'serverspec'
set :backend, :exec
set :path, '/sbin:/usr/local/sbin:$PATH'
#user    = options[:root] || Etc.getlogin
