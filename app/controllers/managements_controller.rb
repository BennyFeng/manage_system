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
      @pg = "doc.html.erb"
    elsif params[:page] == '2'
      @pg = "lag.html.erb"
    elsif params[:page] == '3'
      @pg = "att.html.erb"
    else
      @pg = "announce.html.erb"
    end
    @emp = Basic.all
  end

  def create
  end

  def destroy
      @empid = cookies[:empid]
      emp = Basic.find(@empid)
      emp.destroy
      redirect_to managements_path
  end
end
