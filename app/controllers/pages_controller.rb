class PagesController < ApplicationController
  def home
    @mainArticle = Article.find_by_name('Home')
    @title = @mainArticle.title
    
    @banner = Article.find_by_name('Banner')
  end

  def about
  end
end
