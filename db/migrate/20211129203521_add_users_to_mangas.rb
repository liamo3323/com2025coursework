class AddUsersToMangas < ActiveRecord::Migration[5.2]
  def up
    add_reference :mangas, :user, index: true
    Manga.reset_column_information
    user = User.first

    Manga.all.each do |manga|
      manga.user_id = manga.id
      manga.save!
    end 

    change_column_null :mangas, :user_id, false
    add_foreign_key :mangas, :users
  end

  def down
    remove_foreign_key :mangas, :users
    remove_reference :mangas, :user, index: true
  end
end

