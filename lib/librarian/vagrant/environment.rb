require 'librarian/environment'
require 'librarian/vagrant/dsl'
require 'librarian/vagrant/source'
require 'librarian/vagrant/version'

module Librarian
  module Vagrant
    class Environment < Librarian::Environment
      def adapter_name
        'vagrant'
      end

      def adapter_version
        Librarian::Vagrant::VERSION
      end

      # NOTE: This is the perfect place to use the Ruby 2.0.0 Symbol literal.
      # TODO: When Mavericks is released switch to Ruby 2.0.0 exclusively.
      #       This is fair because Fedora, Darwin, and more are adding Ruby 2 as
      #       defaults now.
      def config_keys
        super + [:path, :remove_dot_git]
      end

      def install_path
        path_suffix = config_db['path']
        # TODO: What should the default path be?
        path_suffix ||= File.join(ENV['HOME'], '.vagrant.d', 'gems')
        project_path.join(path_suffix)
      end
    end
  end
end
