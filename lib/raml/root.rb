module Raml
  class Root
    attr_accessor :title, :base_uri, :version, :resources, :documentation, :base_uri_parameters

    def initialize
      @resources = []
      @documentation = []
    end

    def uri
      base_uri.sub('{version}', version.to_s)
    end

    def path
      ''
    end

  end
end
