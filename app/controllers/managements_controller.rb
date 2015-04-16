class ManagementsController < ApplicationController
  def index
    cookies[:hint] = ''
    @num = cookies[:emp_num]
    @id = session[:emp_id]
    if @num == '' || @id == ''
      @hint = "您还没登录，请您先登录"
      redirect_to root_path
    elsif @id != '2'
      @hint = "非法操作,你不是管理员!"
      redirect_to root_path
    end
    cookies[:hint] = @hint
    if params[:page] == '1'
      @pg = "addannounce.html.erb"
    elsif params[:page] == '2'
      @pg = "editannounce.html.erb"
    elsif params[:page] == '3'
      @pg = "deleteannounce.html.erb"
    else
      @pg = "announce.html.erb"
    end
  end

  def create
  end
end
