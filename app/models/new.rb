class New < ActiveRecord::Base
  belongs_to :news_categories
  attr_accessible :important, :name, :new_date
end
