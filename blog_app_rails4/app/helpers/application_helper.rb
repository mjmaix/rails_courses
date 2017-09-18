module ApplicationHelper
  def devise_error_messages!
    return '' unless devise_error_messages?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
          <div class="alert alert-error alert-danger">
            <a href='#' class='close' date-dismiss='alert' &#215;></a>
            <%= content_tag :div, msg if msg.is_a?(String) %>
          </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end
end
