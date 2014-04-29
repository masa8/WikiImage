require 'rake'
require 'rake/testtask'
require 'rdoc/task'


desc 'Generate documentation for the wiki_image plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'WikiImage'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


Rake::TestTask.new do |t|
  t.libs << 'test'
end
desc "Run tests"
task :default => :test
