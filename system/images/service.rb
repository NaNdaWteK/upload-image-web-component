require_relative 'repository'
require_relative 'image'

module Images
  class Service
    class << self
      def store(file)
        image = Images::Repository.store(file)
        image.serialize
      end
    end
  end
end
