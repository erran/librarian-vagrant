require 'librarian/source/path'
require 'librarian/vagrant/source/local'

module Librarian
  module Vagrant
    module Source
      class Path < Librarian::Source::Path
        include Librarian::Vagrant::Source::Local
      end
    end
  end
end
