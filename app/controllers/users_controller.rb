class UsersController < ApplicationController
  def index
    cookies[:hint] = ''
    @num = cookies[:emp_num]
    @id = session[:emp_id]
    if @num == '' || @id == ''
      @hint = "您还没登录，请您先登录"
      redirect_to root_path
    elsif @id != '1'
      @hint = "非法操作,请重新登录!"
      redirect_to root_path
    end
    cookies[:hint] = @hint
    if params[:page] == '1'
      @pg = "personal.html.erb"
    elsif params[:page] == '2'
      @pg = "laborage.html.erb"
    elsif params[:page] == '3'
      @pg = "attendance.html.erb"
    else
      @pg = "announce.html.erb"
    end
  end
end
