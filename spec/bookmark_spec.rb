require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it "creates a new bookmark" do
      bookmark = Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter Website')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to include 'http://www.twitter.com'
      expect(bookmark.title).to include 'Twitter Website'
    end
  end

  describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(title: 'Sea Monsters', url: 'https://en.wikipedia.org/wiki/Sea_monster')

      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end
  end

  describe '.update' do
    it 'updates a given bookmark with new data' do
      bookmark = Bookmark.create(title: 'Sea Monsters', url: 'https://en.wikipedia.org/wiki/Sea_monster')
      updated_bookmark = Bookmark.update(id: bookmark.id, url: "https://sharkclean.co.uk/", title: "Sharks")

      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.url).to eq "https://sharkclean.co.uk/"
      expect(updated_bookmark.title).to eq 'Sharks'
    end
  end

describe '.find' do
  it "returns the requested bookmark" do
    bookmark = Bookmark.create(title: 'Sea Monsters', url: 'https://en.wikipedia.org/wiki/Sea_monster')

    result = Bookmark.find(id: bookmark.id)

    expect(result).to be_a Bookmark
    expect(result.id).to eq bookmark.id
    expect(result.url).to eq "https://en.wikipedia.org/wiki/Sea_monster"
    expect(result.title).to eq 'Sea Monsters'

  end
end

end
