class Article < ActiveRecord::Base
  translates :title, :body, :summary
  
  attr_accessible :name, :parent_id, :position   
  attr_accessor :locale # to hold temporarily
  accepts_nested_attributes_for :translations 
  
  attr_accessible :translations_attributes

  acts_as_nested_set
  
  self.per_page = 10 
  
  class Translation
    attr_accessible :locale, :summary, :title, :body
  end

  def parent_name
    if self.parent != nil
      self.parent.name
    end
  end
end
