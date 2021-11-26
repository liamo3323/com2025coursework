class CreateMangas < ActiveRecord::Migration[5.2]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :availability
      t.integer :volumeNum
      t.string :owner
      t.string :borrower
      t.integer :value

      t.timestamps
    end
  end
end
