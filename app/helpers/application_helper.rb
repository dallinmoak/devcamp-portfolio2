module ApplicationHelper

  def login_helper
    if current_user.class == User
      link_to "logout", destroy_user_session_path, method: :delete
    else
      (link_to "login", new_user_session_path) +
      "<br>".html_safe +
      (link_to "register", new_user_registration_path)
    end
  end

  def source_helper (layout_name)
    ("<hr>".html_safe) +
    if session[:source]
      greeting = "thanks for visiting me from #{session[:source]} on #{layout_name}."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    DmoakPracticeGem::Renderer.copyright 'Dallin Moak', 'copyright message'
  end
end
