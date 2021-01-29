feature 'updating bookmarks' do
  scenario 'update an existing bookmark' do
    bookmark = Bookmark.create(url: 'https://en.wikipedia.org/wiki/Sea_monster', title: 'Sea Monsters')
    visit('/bookmarks')
    expect(page).to have_link('Sea Monsters', href: 'https://en.wikipedia.org/wiki/Sea_monster')

    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in('url', with: "https://sharkclean.co.uk/")
    fill_in('title', with: "Sharks")
    click_button("Submit")

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Sea Monsters', href: 'https://en.wikipedia.org/wiki/Sea_monster')
    expect(page).to have_link("Sharks", href: "https://sharkclean.co.uk/")

  end
end
