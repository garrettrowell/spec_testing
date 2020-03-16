# frozen_string_literal: true

require 'spec_helper'

describe 'spec_testing::declarative_patching::versioned' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      xit 'packages should not be versioned' do
        is_expected.not_to contain_package('foo').with_ensure(/(\d+\.?.*)+/)
      end
    end
  end
end
