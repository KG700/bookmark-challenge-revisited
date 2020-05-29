require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_test')

      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      Bookmark.create(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
      Bookmark.create(title: 'Google', url: 'http://www.google.com')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(title: 'Test Bookmark', url: 'http://www.testbookmark.com')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end

end
