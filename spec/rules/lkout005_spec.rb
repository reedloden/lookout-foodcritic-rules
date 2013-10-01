require 'spec_helper'

describe 'LKOUT005' do
  let(:fc_run) do
    foodcritic_run('LKOUT005')
  end

  it "generates a warning against invalid_resource.rb's spec file" do
    expect(warnings(fc_run)).to include('invalid_resource.rb')
  end

  it "doesn't generate a warning against valid_resource.rb's spec file" do
    expect(warnings(fc_run)).to_not include('valid_resource.rb')
  end
end
