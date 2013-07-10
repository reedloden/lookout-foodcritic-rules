# Lookout custom foodcritic rules

rule "LKOUT001", "Include a chefspec test for every recipe" do
  tags %w{testing lookout}
  cookbook do |cookbook_path|
    matches = []
    recipes = Dir.glob(File.join(cookbook_path, 'recipes/*.rb'))

    recipes.each do |r|
      recipe_name = File.basename(r, '.rb')
      recipe_spec = File.join(cookbook_path, "spec/#{recipe_name}_spec.rb")

      unless File.exist?(recipe_spec)
        matches << file_match(recipe_spec)
      end
    end

    matches
  end
end
