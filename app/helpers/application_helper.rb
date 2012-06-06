module ApplicationHelper
  def language_changer
    html = "<ul class=\"lang\">"
    html << "<li>#{ link_to image_tag("ukflag.gif"), url_for( :locale => 'en' )
      }</li>"
    html << "<li>#{ link_to image_tag("greekflag.gif"), url_for( :locale => 'el' )}</li>"
    html << "</ul>"
    html.html_safe
  end
end
