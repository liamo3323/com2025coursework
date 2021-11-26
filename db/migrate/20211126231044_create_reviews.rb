class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :manga, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
