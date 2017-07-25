require 'spec_helper_bdd'
require_relative 'test_support/dragdrop'
require_relative '../../app'

feature 'Image' do
  context 'Upload Area' do
    
    scenario 'attach file' do
      current = Page::DragDrop.new
      pwd = Pathname.pwd
      current.add_file('file', pwd + 'spec/test_files/logo.png')

      expect(current.is_visible?('100%')).to be true
    end

    scenario 'attach more than one file' do
      current = Page::DragDrop.new
      pwd = Pathname.pwd
      current.add_file('file', pwd + 'spec/test_files/logo.png')
      current.add_file('file', pwd + 'spec/test_files/nacho.jpeg')

      expect(current.is_visible?('100%')).to be true
      expect(current.two_images?).to be true
    end

  end
end
