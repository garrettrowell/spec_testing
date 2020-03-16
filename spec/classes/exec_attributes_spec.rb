# frozen_string_literal: true

require 'spec_helper'

describe 'spec_testing::exec_attributes' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      execs = ['whoami onlyif', 'whoami unless']
      it { is_expected.to compile }
      execs.each do |resource|
        it { is_expected.not_to contain_exec(resource).without_onlyif }
        it { is_expected.not_to contain_exec(resource).without_unless }
      end
    end
  end
end
