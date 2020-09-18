class ReactionsController < ApplicationController
    def create
        reaction = Reaction.find_or_initialize_by(user_id: params[:user_id], from_user: current_user.id, article_id: params[article_id])
        reaction.update(
          status: params[:reaction]
        )
    end
end
