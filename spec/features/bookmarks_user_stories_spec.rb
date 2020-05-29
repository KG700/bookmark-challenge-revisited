feature 'User Stories: Bookmarks' do

  # As a user
  # So I can quickly find URL I want to remember
  # I would like to see a list of bookmarks
  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      Bookmark.create(title: 'Destroy All Software', url: 'http://www.destroyallsoftware.com')
      Bookmark.create(title: 'Google', url: 'http://www.google.com')

      visit '/bookmarks'

      expect(page).to have_link 'Makers Academy', href: "http://www.makersacademy.com"
      expect(page).to have_link 'Destroy All Software', href: "http://www.destroyallsoftware.com"
      expect(page).to have_link 'Google', href: "http://www.google.com"
    end
  end

  # As a user,
  # So I can store bookmark data for later retrieval
  # I want to add a bookmark to Bookmark Manager
  feature 'creating bookmarks' do
    scenario do
      visit '/bookmarks/new'
      fill_in :url, with: 'http://www.testbookmark.com'
      fill_in :title, with: 'Test Bookmark'
      click_button 'Submit'

      expect(page).to have_link 'Test Bookmark', href: 'http://www.testbookmark.com'
    end
  end

end
