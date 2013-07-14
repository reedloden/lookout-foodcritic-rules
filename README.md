[![Build Status](https://travis-ci.org/lookout/lookout-foodcritic-rules.png?branch=master)](https://travis-ci.org/lookout/lookout-foodcritic-rules)

# lookout-foodcritic-rules

Custom foodcritic rules used on chef recipes at Lookout.

## Installation

Add this line to your Gemfile in chef-repo:

    gem 'foodcritic-rules'

And then execute `bundle` to install the gem.

Or install it yourself:

    $ gem install foodcritic-rules

## Usage

Once you have installed the gem, simply run foodcritic with the `-G` option:

    foodcritic -t lookout -G cookbooks/

# Rules

## <a id="LKOUT001"></a>LKOUT001: Include a chefspec test for every recipe

We use chefspec for unit testing our recipes.  As a general standard, every
recipe is required to have an associated unit test.

This rules looks for files under the cookbook's `spec` directory named
`<recipe_name>_spec.rb`

For example:

```bash
# Good
$ ls cookbooks/my_cookbook/recipes/my_recipe.rb 
cookbooks/my_cookbook/recipes/my_recipe.rb
$ ls cookbooks/my_cookbook/spec/my_recipe_spec.rb 
cookbooks/my_cookbook/spec/my_recipe_spec.rb

# Bad
$ ls cookbooks/my_cookbook/recipes/my_other_recipe.rb 
cookbooks/my_cookbook/recipes/my_other_recipe.rb
$ ls cookbooks/my_cookbook/spec/my_other_recipe_spec.rb 
ls: cannot access cookbooks/my_cookbook/spec/my_other_recipe_spec.rb: No such file or directory
```

# License

Lookout Foodcritic Rules

* Author: James Burgess <james.burgess AT lookout DOT com>
* Copyright: Copyright (c) Lookout, Inc.
* License: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
