class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :author, foreign_key: true
      t.datetime :published_at
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end