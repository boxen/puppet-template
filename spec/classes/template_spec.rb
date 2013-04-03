require 'spec_helper'

describe 'template' do
    it do
      should contain_notify('Hello_World')
    end
end
