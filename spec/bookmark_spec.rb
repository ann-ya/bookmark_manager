require 'bookmark'

describe Bookmark do

  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      #Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.codecademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.co.uk');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.codecademy.com')
      expect(bookmarks).to include('http://www.youtube.com')
      expect(bookmarks).to include('http://www.google.co.uk')
    end
  end

end