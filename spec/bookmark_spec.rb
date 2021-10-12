require 'bookmark'

describe Bookmark do
  
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.codecademy.com")
      expect(bookmarks).to include("http://www.youtube.com")
      expect(bookmarks).to include("http://www.google.co.uk")
    end
  end
end