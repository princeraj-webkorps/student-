module GadgetsHelper

    def gadget_author(gadget)
        user_signed_in? && current_user.id == gadget.user_id
    end

end
