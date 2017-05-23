require 'spec_helper'
describe 'groups' do
  context 'with default values for all parameters' do
    it { should contain_class('groups') }
  end
end
