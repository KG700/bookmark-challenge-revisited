require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_test')
    else
      connection = PG.connect(dbname: 'bookmark')
    end

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_test')
    else
      connection = PG.connect(dbname: 'bookmark')
    end

    connection.exec("Insert INTO bookmarks (url) VALUES('#{url}')")
  end
end
