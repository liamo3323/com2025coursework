class RemoveAvailabilityFromMangas < ActiveRecord::Migration[5.2]
  def change
    remove_column :mangas, :availability, :string
    remove_column :mangas, :volumeNum, :integer
    remove_column :mangas, :owner, :string
    remove_column :mangas, :borrower, :string
    remove_column :mangas, :value, :integer
  end
end
