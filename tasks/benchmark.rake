require 'million'
require 'benchmark'

namespace :benchmark do
  task :pi do
    puts "Million::Pi"
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

  task :phi do
    puts "Million::Phi"
    phi = Million::Phi.new
    Benchmark.bm do |bm|
      bm.report("new ") do
        Million::Phi.new
      end

      bm.report("[ ] ") do
        10.times.each{ |index| phi[index] }
      end

      bm.report("find") do
        10.times.each{ phi.find("8405") }
      end
    end
  end

  task :euler do
    puts "Million::Euler"
    e = Million::Euler.new
    Benchmark.bm do |bm|
      bm.report("new ") do
        Million::Euler.new
      end

      bm.report("[ ] ") do
        10.times.each{ |index| e[index] }
      end

      bm.report("find") do
        10.times.each{ e.find("8405") }
      end
    end
  end

  task all: [:pi, :phi, :euler]
end