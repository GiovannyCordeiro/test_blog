class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
