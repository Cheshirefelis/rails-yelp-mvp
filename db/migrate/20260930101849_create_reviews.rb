class CreateReviews < ActiveRecord::Migration[8.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.text :content

      t.timestamps
    end
  end
end
