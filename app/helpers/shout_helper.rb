module ShoutHelper
    def shout_form_for(content_type)
		form_for(Shout.new, url: content_type.new) do |form|
			form.fields_for(:content) { |content_form| yield(content_form) }
		end
    end
    
    def like_button(shout)
        if current_user.liked?(shout)
            link_to "Unlike", unlike_shout_path(shout), method: :delete
        else
            link_to "Like", like_shout_path(shout), method: :post
        end
    end

    def autolink(text)
        text.
        gsub(/@\w*/) { |mention| link_to mention, user_path(mention[1..-1]) }.
        gsub(/#\w*/) { |hashtag| link_to hashtag, hashtag_path(hashtag[1..-1]) }.
        html_safe
    end

    def delete_button(shout)
        if current_user.id == shout.user_id
            link_to "Delete", shout_path(shout), method: :delete
        else
            { notice: "Could not delete shout" }
        end
    end
end
