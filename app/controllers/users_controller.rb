class UsersController < ApplicationController
  def index
    @num = cookies[:emp_num]
    @id = cookies[:emp_id]
    if @num == '' || @id == ''
      @hint = "您还没登录，请您先登录"
      cookies[:hint] = @hint
      redirect_to root_path
    end
  end
end
