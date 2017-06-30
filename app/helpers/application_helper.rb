module ApplicationHelper
  def login_helper style, tag_type
    if current_user
      login_items = [
        {
          url: new_user_registration_path,
          title: 'Register'
        },
        {
          url: new_user_session_path,
          title: 'Login'
        }
      ]
      login_links = []
      login_items.each do |item|
        login_links << content_tag(tag_type, (link_to item[:title], item[:url], class: style))
      end

      login_links = login_links.join('')

      login_links.html_safe
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def copyright_generator
    @copyright = '&copy;2017 Chazona Baum'
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About'
      },
      {
        url: updates_path,
        title: 'Updates'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end
end
