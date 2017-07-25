require_relative 'basic'

module Page
  class DragDrop < Basic::Methods
    include Capybara::DSL

    def initialize
      url = '/'
      visit(url)
      validate!
    end

    def add_file(locator, file)
      attach_file(locator, file, wait: 5)
    end

    def two_images?
      has_selector?('div.holder img', count: 2)
    end

    private

    def validate!
      assert_selector('.file')
      assert_selector('.holder')
      assert_selector('.upload')
    end
  end
end
