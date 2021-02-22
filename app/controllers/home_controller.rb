class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @questions = Question.where.not(user_id: @current_user.id)
                         .order(desc: :id)
                         .paginate(page: params[:page], per_page: 10)
  end
end
