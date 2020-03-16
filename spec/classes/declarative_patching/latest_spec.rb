# frozen_string_literal: true

require 'spec_helper'

describe 'spec_testing::declarative_patching::latest' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      xit 'packages should not be set to latest' do
        is_expected.not_to contain_package('foo').with_ensure('latest')
      end
    end
  end
end
