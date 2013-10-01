rule "LKOUT005", "specify an action when using a resource" do
  tags %w{lookout style}
  recipe do |ast|
    find_resources(ast).select do |r|
      action = resource_attribute(r, 'action')
      action.nil?
    end
  end
end
