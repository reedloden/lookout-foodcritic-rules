# user with both uid and gid specified
user 'foo' do
  uid 123
  gid 123
end

# don't match on users that are being removed
user 'bar' do
  action :remove
end
