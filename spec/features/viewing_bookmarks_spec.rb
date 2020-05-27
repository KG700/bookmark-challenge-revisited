feature 'Viewing bookmarks' do

  # As a user
  # So I can quickly find URL I want to remember
  # I would like to see a list of bookmarks
  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      visit '/bookmarks'

      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"
    end
  end

end
