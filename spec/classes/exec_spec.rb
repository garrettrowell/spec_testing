# frozen_string_literal: true

require 'spec_helper'

describe 'spec_testing::exec' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      xit 'Exec resource is being used' do
        is_expected.to have_exec_resource_count(0)
      end
    end
  end
end
