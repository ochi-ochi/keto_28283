class UsersController < ApplicationController
    def index
        @myarticle = Article.includes(:user)
        @name = current_user&.name
    end
end
