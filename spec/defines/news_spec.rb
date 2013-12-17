require 'spec_helper'

describe 'motd::news' do
   context 'on a Linux kernel' do
     let(:facts) do 
       { :concat_basedir => '/doesnotexist' }
     end
     let(:title) {'Some News'}
     date = '2013-12-11'
     let(:params) { { :date => date}}
     shortdate = date.gsub(/^(\d+)\-(\d+)\-(\d+)$/,'\1\2')
     it do 
       should contain_file("/etc/motd-archive/#{shortdate}").with({
          'ensure' => 'present',
          'owner'  => 'root',
          'group'  => 'root',
          'mode'   => '0644'
       })
     end
  end
end
