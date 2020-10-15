class ReactionsController < ApplicationController
    before_action :authenticate_user!

    def create
        @reaction = Reaction.new(status: params[:reaction], user_id: current_user.id, article_id: params[:article_id])
        if  @reaction.save!
            redirect_to  articles_path
        else
            redirect_to  articles_path
        end
    end

    
end
