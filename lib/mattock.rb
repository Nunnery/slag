require 'mattock/version'

# Contains all of the modules and classes relevant to Mattock.
module Mattock
  # The root path for Mattock source code files
  # @return [String] path to source code files
  ROOT = File.expand_path(File.dirname(__FILE__))
end

# Require all Ruby core extension classes automagically
Dir.glob(File.join(Mattock::ROOT, 'mattock', 'core_ext', '*.rb')).each do |file|
  require file
end

# Require autoload classes in order to ease compatibility
['autoload'].each do |file|
  require File.join(Mattock::ROOT, 'mattock', file)
end