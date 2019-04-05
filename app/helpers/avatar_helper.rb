module AvatarHelper
    def avatar(user, klass = "")
        email_digest = Digest::MD5.hexdigest user.email
        gravatar_url = "//www.gravatar.com/avatar/#{email_digest}"

        image_tag gravatar_url, :class => klass
    end
end
