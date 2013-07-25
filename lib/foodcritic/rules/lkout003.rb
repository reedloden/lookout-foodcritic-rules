rule "LKOUT003", "user should have a uid and gid specified" do
  tags %w{lookout style}
  recipe do |ast|
    find_resources(ast, :type => 'user').select do |u|
      uid = resource_attribute(u, 'uid')
      gid = resource_attribute(u, 'gid')
      action = resource_attribute(u, 'action')

      action != :remove && (uid.nil? || gid.nil?)
    end
  end
end
