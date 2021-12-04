class RemovePublishedFromMangas < ActiveRecord::Migration[5.2]
  def change
    remove_column :mangas, :Published, :Datetime
  end
end
