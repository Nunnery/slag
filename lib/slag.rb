require 'slag/version'

# Contains all of the modules and classes relevant to Mattock.
# @author Richard Harrah
module Slag
  # The root path for Slag source code files
  # @return [String] path to source code files
  ROOT = File.expand_path(File.dirname(__FILE__))
end

# Require all Ruby core extension classes automagically
Dir.glob(File.join(Slag::ROOT, 'slag', 'core_ext', '*.rb')).each do |file|
  require file
end

# Require autoload classes in order to ease compatibility
['autoload'].each do |file|
  require File.join(Slag::ROOT, 'slag', file)
end