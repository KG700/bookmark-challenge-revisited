feature 'bookmarks' do

  # As a user
  # So I can quickly find URL I want to remember
  # I would like to see a list of bookmarks
  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      connection = PG.connect(dbname: 'bookmark_test')

      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

      visit '/bookmarks'

      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
    end
  end

  # As a user,
  # So I can store bookmark data for later retrieval
  # I want to add a bookmark to Bookmark Manager
  feature 'creating bookmarks' do
    scenario do
      visit '/bookmarks/new'
      fill_in :url, with: 'http://www.testbookmark.com'
      click_button 'Submit'

      expect(page).to have_content 'http://www.testbookmark.com'
    end
  end

end
