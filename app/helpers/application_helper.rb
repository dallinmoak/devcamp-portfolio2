module ApplicationHelper

  def login_helper style = ''
    if current_user.class == User
      link_to "logout", destroy_user_session_path, method: :delete, class: style
    else
      (link_to "login", new_user_session_path, class: style) +
      "".html_safe +
      (link_to "register", new_user_registration_path, class: style)
    end
  end

  def source_helper(styles)
    if session[:source]
      greeting = "thanks for visiting me from #{session[:source]}, please feel free to #{link_to 'contact me', contact_path} if you want to get together"
      content_tag(:div, greeting.html_safe, class: styles)
    end
  end

  def copyright_generator
    DmoakPracticeGem::Renderer.copyright 'Dallin Moak', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: about_path,
        title: "About"
      },
      {
        url: contact_path,
        title: "Contacts"
      },
      {
        url: tech_news_path,
        title: "BYU probs"
      },
      {
        url: blogs_path,
        title: "Blog"
      },
      {
        url: portfolios_path,
        title: "Portfolio"
      }
    ]
  end

  def nav_helper(style, tag_type)
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active path
    "active" if current_page? path
  end
  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert 
      alert_generator alert
    end
  end

  def alert_generator message
    js add_gritter(message, title: "Dallin notification", sticky: false)
  end

  def about_header_helper
    "about_nav".html_safe unless current_page?('/')
  end

  def floaty_footer_helper
    "floaty-footer".html_safe unless current_page?('/')
  end
end
