feature 'Viewing bookmarks' do
	scenario 'Visiting the index page' do
		visit('/')
		expect(page).to have_content 'Bookmark Manager'
	end

	scenario 'A user can see bookmarks' do
		Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Website')
		Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
		Bookmark.create(url: 'http://www.google.com', title: 'Google')

		visit('/bookmarks')

		expect(page).to have_link("Makers Website", href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Google", href: "http://www.google.com")
  end

end
