require 'spec_helper'

describe 'motd::news' do
   context 'on a Linux kernel' do
     let(:facts) do 
       { :concat_basedir => '/doesnotexist' }
     end
     let(:title) {'Some News'}
     let(:params) { { :date => '2013-12-11' }}
     it do 
       should contain_file{"/etc/motd-archive/#{date.gsub(/^(\d+)\-(\d+)\-(\d+)$/,'\1\2')}"}.with({
       })
     end
  end
end
