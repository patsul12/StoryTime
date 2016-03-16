class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.integer :user_id
      t.integer :story_id
      t.string :image_url
      t.string :content
      
      t.timestamps null: false
    end
  end
end
