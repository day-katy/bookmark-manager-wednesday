feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'https://en.wikipedia.org/wiki/Sea_monster', title: 'Sea Monsters')
    visit('/bookmarks')
    expect(page).to have_link('Sea Monsters', href: 'https://en.wikipedia.org/wiki/Sea_monster')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Sea Monsters', href: 'https://en.wikipedia.org/wiki/Sea_monster')
  end
end