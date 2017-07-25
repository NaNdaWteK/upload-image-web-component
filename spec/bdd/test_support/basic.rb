module Basic
  class Methods

    def fill(field, content)
      fill_in(field, with: content)
    end

    def input_value(input)
      find_field(name: input).value
    end

    def has_element?(selector)
      has_css?(selector)
    end

    def wait_for_element?(selector)
      has_css?(selector, wait: 2)
    end

    def is_visible?(content)
      has_content?(content)
    end

    def content(selector)
      find(selector).text
    end

    def press(selector)
      find(selector).click
    end

    def is_enabled?(selector)
      has_css?(selector+":enabled")
    end

    def is_disabled?(selector)
      has_css?(selector+":disabled")
    end

  end
end
