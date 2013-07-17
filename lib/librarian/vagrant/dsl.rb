require 'librarian/dsl'
require 'librarian/vagrant/source'

module Librarian
  module Vagrant
    class Dsl < Librarian::Dsl
      dependency :plugin

      source :git => Source::Git
      source :github => Source::GitHub
      source :path => Source::Path
    end
  end
end
