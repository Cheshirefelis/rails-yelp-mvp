class ChangeRatingTypeToIntegerInReviews < ActiveRecord::Migration[8.1]
  def change
    # hange_column :table_name, :column_name, :new_type)
    change_column :reviews, :rating, :integer
  end
end
