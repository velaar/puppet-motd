require 'spec_helper'

describe 'motd::news' do
   context 'on a Linux kernel' do
     let(:facts) do 
       { :concat_basedir => '/doesnotexist' }
     end
     let(:title) {'Some News'}
     date = '2013-12-11'
     let(:params) { { :date => date}}
     it do 
       $stdout.puts self.catalogue.to_yaml
       $stdout.puts "HERE /etc/motd-archive/#{date.gsub(/^(\d+)\-(\d+)\-(\d+)$/,'\1\2')}"
       should contain_file{"/doesnotexist"}.with({
       })
     end
  end
end
