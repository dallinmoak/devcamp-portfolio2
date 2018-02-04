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

  def source_helper (layout_name)
    if session[:source]
      greeting = "thanks for visiting me from #{session[:source]} on #{layout_name}."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    DmoakPracticeGem::Renderer.copyright 'Dallin Moak', 'copyright message'
  end
end
