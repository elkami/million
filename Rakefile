#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new('spec')

Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].sort.each { |file| load file }

task default: :spec