feature "adding bookmarks" do
  scenario "adding a new URL to bookmark list" do
    visit('/bookmarks')
    fill_in('url', :with => 'http://www.twitter.com')
    fill_in('title', :with => 'Twitter')
    click_button("Add bookmark")

    expect(page).to have_link("Twitter", href: 'http://www.twitter.com')
  end
end
