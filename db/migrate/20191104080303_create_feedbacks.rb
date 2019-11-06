class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.text :comments
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
