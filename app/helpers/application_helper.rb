module ApplicationHelper
  def language_switcher_link
    other_locale = toggle_locale.to_s
    url = if params.keys.include? 'id'
            # TODO: introspection into params to figure out 
            # the object model from which to call to_param on, e.g.
            # new_id = @product.to_param
            url_for(:locale => other_locale, :id => new_id)
          else
            url_for(:locale => other_locale)
          end 
    toggle_locale
    url 
  end

  def toggle_locale
    I18n.locale = [:en, :gr].reject{|l| l == I18n.locale}.pop
  end
  
  def page_title
    (@title + " &mdash; " if @title).to_s + 'Ioannis-Andreas Philippas'
  end
end
