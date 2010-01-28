require 'rubygems'
gem 'require'
require 'require'

Require File.dirname(__FILE__) do
  gem :require, '=0.1.6'
  gem(:rake, '=0.8.7') { require 'rake' }
  gem :rspec, '=1.3.0'
  
  gemspec do
    author 'Winton Welsh'
    dependencies do
      gem :require
    end
    email 'mail@wintoni.us'
    name 'gem_template'
    homepage "http://github.com/winton/#{name}"
    summary ""
    version '0.1.0'
  end
  
  bin { require 'lib/gem_template' }
  lib { require 'lib/gem_template/gem_template' }
  rails_init { require 'lib/gem_template' }
  
  rakefile do
    gem(:rake) { require 'rake/gempackagetask' }
    gem(:rspec) { require 'spec/rake/spectask' }
    require 'require/tasks'
  end
  
  spec_helper do
    require 'require/spec_helper'
    require 'rails/init'
    require 'pp'
  end
end