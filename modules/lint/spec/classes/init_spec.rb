require 'spec_helper'
describe 'lint' do
  context 'with default values for all parameters' do
    it { should contain_class('lint') }
  end
end
