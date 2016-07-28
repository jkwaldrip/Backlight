require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

# -- Version Tasks --
#    (from Backlight)
desc "Show current version number"
task :version do
  puts "v#{Backlight::VERSION}"
end

# Return only the major version number, as an integer
def get_major
  Backlight::VERSION.match(/^(\d+)(?:\.)/)[0].to_i
end

# Return only the minor version number, as an integer
def get_minor
  Backlight::VERSION.match(/^(?:\d+\.)(\d+)/)[1].to_i
end

# Return only the patch version number, as an integer
def get_patch
  Backlight::VERSION.match(/(?:\.)(\d+)$/)[1].to_i
end

# Write the new value of the version constant to lib/Backlight/version.rb
def write_version(version)
  text = File.read('lib/Backlight/version.rb')
  File.write('lib/Backlight/version.rb',text.gsub(/\d+\.\d+\.\d+/,version))
  puts "v#{Backlight::VERSION} -> v#{version}"
end

# Decrement the given number, as long as it is greater than 0
def cautious_drop(num)
  if num <= 0
    0
  else
    num - 1
  end
end

namespace :version do


  desc "Increment major version: v#{Backlight::VERSION} -> v#{get_major + 1}.0.0"
  task :bump_major do
    write_version("#{get_major + 1}.0.0")
  end

  desc "Increment minor version: v#{Backlight::VERSION} -> v#{get_major}.#{get_minor + 1}.0"
  task :bump_minor do
    write_version("#{get_major}.#{get_minor + 1}.0")
  end

  desc "Increment patch version: v#{Backlight::VERSION} -> v#{get_major}.#{get_minor}.#{get_patch + 1}"
  task :bump_patch do
    write_version("#{get_major}.#{get_minor}.#{get_patch + 1}")
  end

  desc "Decrement major version: v#{Backlight::VERSION} -> v#{cautious_drop(get_major)}.0.0"
  task :drop_major do
    write_version("#{cautious_drop(get_major)}.0.0")
  end

  desc "Decrement minor version: v#{Backlight::VERSION} -> v#{get_major}.#{cautious_drop(get_minor)}.0"
  task :drop_minor do
    write_version("#{get_major}.#{cautious_drop(get_minor)}.0")
  end

  desc "Decrement patch version: v#{Backlight::VERSION} -> v#{get_major}.#{get_minor}.#{cautious_drop(get_patch)}"
  task :drop_patch do
    write_version("#{get_major}.#{get_minor}.#{cautious_drop(get_patch)}")
  end

end
