class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  def background_url
    "background-#{object.layout}.jpg"
  end

end
