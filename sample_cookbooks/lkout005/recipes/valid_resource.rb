package 'foo' do
  action :install
end

gem 'bar' do
  action :upgrade
end

service 'baz' do
  action :enable
end
