class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :name
      t.date :new_date
      t.references :news_categories
      t.boolean :important

      t.timestamps
    end
    add_index :news, :news_categories_id
    New.create_translation_table! :title => :string, :body => :text, :summary => :text
  end
  
  def self.down
    drop_table :Articles
    New.drop_translation_table!
  end
end
