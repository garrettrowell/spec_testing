# frozen_string_literal: true

require 'spec_helper'

describe 'spec_testing::stage' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      xit 'Stage resource should not be used' do
        is_expected.to have_stage_resource_count(0)
      end
      it { pp catalogue }
    end
  end
end
