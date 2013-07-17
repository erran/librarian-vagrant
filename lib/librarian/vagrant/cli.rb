require 'librarian/cli'
require 'librarian/helpers'
require 'librarian/vagrant'

module Librarian
  module Vagrant
    class CLI < Librarian::Cli
      # NOTE: Unlike most of the code in librarian-chef I don't understand the
      #       objective of the Particularity module/extend.
      module Particularity
        def root_module
          Librarian::Vagrant
        end
      end

      extend Particularity

      # source_root Pathname.new(__FILE__).dirname.join("templates")
      # TODO: Add a template plugins.json file and make an example plugins.rb DSL
      # TODO: Update this description
      # TODO: Add method_options, chiefly :path
      desc 'install', 'Install any plugin dependencies for the current Vagrant project'
      def install
        CommandNotFoundError = Class.new(NotImplementedError)
        raise CommandNotFoundError, "The install subcommand hasn't been implemented yet."
      end
    end
  end
end
