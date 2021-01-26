require 'pg'


class Bookmark
  BOOKMARKS = []

  begin
    bookmark_database = PG.connect :dbname => 'bookmark_manager'
    all_bookmarks = bookmark_database.exec("SELECT * FROM bookmarks;")
    all_bookmarks.each { |bookmark| BOOKMARKS << bookmark["url"] }
  end

  def self.all
    BOOKMARKS
  end
  
end
