module Images
  class Repository
    @content = []
    class << self

      def store(file)
        image = Images::Image.new(file)
        image.keep(file[:tempfile], 'public/styles/images/uploaded/')
        @content << image
        image
      end

    end
  end
end
