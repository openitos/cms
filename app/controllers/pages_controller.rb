class PagesController < ApplicationController
  def home
    @mainArticle = Article.find_by_name('home')
  end

  def about
  end

  def services
  end

  def publications
  end
end
