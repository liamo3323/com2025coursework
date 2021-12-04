class AddPublishedToMangas < ActiveRecord::Migration[5.2]
  def change
    add_column :mangas, :Published, :Date
  end
end
