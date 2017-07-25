module Images
  class Image

    def initialize(file)
      @id = md5(file[:filename])
      @type = file[:type]
      @name = md5(file[:filename]) + '.' + file[:filename].split('.')[1]
    end

    def serialize
      {
        id: @id,
        name: @name,
        type: @type
      }
    end

    def keep(file, path)
      File.open(File.join(path, @name), 'wb') do |f|
        f.puts file.read
      end
      file.close
      file.unlink
    end

    private


    def md5(filename)
      Digest::MD5.hexdigest(Time.now.getutc.to_s + filename)
    end
  end
end
