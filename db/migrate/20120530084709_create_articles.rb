class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :name
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.integer :position
      

      t.timestamps
    end
    Article.create_translation_table! :title => :string, :body => :text, :summary => :text
  end
  
  def self.down
    drop_table :Articles
    Article.drop_translation_table!
  end
end
