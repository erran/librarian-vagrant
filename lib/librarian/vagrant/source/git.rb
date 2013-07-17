require 'librarian/source/git'
require 'librarian/vagrant/source/local'

module Librarian
  module Vagrant
    module Source
      class Git < Librarian::Source::Git
        include Local

        private

        def install_perform_step_copy!(current_path, install_path)
          current_path = relative_path_to(current_path)
          install_path = relative_path_to(install_path)
          debug { "Copying #{current_path} to #{install_path}" }
          FileUtils.cp_r(current_path, install_path)

          # TODO: Use a different config_db key.
          if environment.config_db[:remove_dot_git].eql? '1'
            _git = install_path.join('.git')
            _git.rmtree if _git.directory?
          end
        end
      end
    end
  end
end
