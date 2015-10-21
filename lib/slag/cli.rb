require 'slag/console'
require 'slag/printing'

module Slag
  # Contains logic for interacting with the command line. Stateless.
  # @author Richard Harrah
  class CLI
    include ::Slag::Console
    include ::Slag::Printing

    # Executes a command.
    # @param command [String] command to execute
    # @return [void]
    def cli(command)
      execute command
      nil
    end

    class << self
      # Executes a command.
      # @param command [String] command to execute
      # @return [void]
      def commandline(command)
        new.cli command
        nil
      end
    end
  end
end