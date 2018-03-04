require 'spec_helper'
describe 'basic' do
  context 'with default values for all parameters' do
    it { should contain_class('basic') }
  end
end
