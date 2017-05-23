require 'spec_helper'
describe 'mod2' do
  context 'with default values for all parameters' do
    it { should contain_class('mod2') }
  end
end
