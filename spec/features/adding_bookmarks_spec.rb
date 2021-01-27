feature "adding bookmarks" do
  scenario "adding a new URL to bookmark list" do
    visit('/bookmarks/new')
    fill_in 'url', :with => 'http://www.twitter.com'
    click_button("Add bookmark")

    expect(page).to have_content 'http://www.twitter.com'
  end
end