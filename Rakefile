require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push %w(test)
  t.pattern = 'test/**/*_test.rb'
  t.warning = true
  t.verbose = true
end

task default: :test
