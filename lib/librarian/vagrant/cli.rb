require 'librarian/cli'
require 'librarian/helpers'
require 'librarian/vagrant'

module Librarian
  module Vagrant
    class CLI < Librarian::Cli
      module Particularity
        def root_module
          Librarian::Vagrant
        end
      end

      extend Particularity

      source_root Pathname.new(__FILE__).dirname.join("templates")

      def init
        copy_file environment.specfile_name
      end

      desc 'install', 'Install any plugin dependencies for the current Vagrant project'
      def install
        raise NotImplementedError, "The install subcommand hasn't been implemented yet."
      end
    end
  end
end
