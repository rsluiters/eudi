module UsersHelper
  require 'socket' # To get hostname

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, small=false)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase) 
    default_pic = CGI.escape(root_url + "/emmi200x200.jpg")
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=#{default_pic}"
    # <img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=http%3A%2F%2Fexample.com%2Fimages%2Favatar.jpg" />
    if (small)
      image_tag(gravatar_url + "&s=32", alt: user.name, size: "32x32", class: "gravatar")
    else
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end  
  end
end
