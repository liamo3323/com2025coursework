class AddLatestChapterToMangas < ActiveRecord::Migration[5.2]
  def change
    add_column :mangas, :LatestChapter, :integer
    add_column :mangas, :Status, :string
    add_column :mangas, :Published, :datetime
    add_column :mangas, :Genre, :string
  end
end
