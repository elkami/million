require 'million'
require 'benchmark'

namespace :benchmark do
  task :pi do
    pi = Million::Pi.new
    Benchmark.bm do |bm|
      bm.report("new ") do
        Million::Pi.new
      end

      bm.report("[ ] ") do
        10.times.each{ |index| pi[index] }
      end

      bm.report("find") do
        10.times.each{ pi.find("8405") }
      end
    end

  end
end