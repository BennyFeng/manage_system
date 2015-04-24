class UsersController < ApplicationController
  def index
    cookies[:hint] = ''
    cookies[:tips5] = ''
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
    if params[:pg] == '1'
      @pg = "personal.html.erb"
    elsif params[:pg] == '2'
      @pg = "laborage.html.erb"
    elsif params[:pg] == '3'
      @pg = "attendance.html.erb"
    else
      @pg = "announce.html.erb"
    end
    @ance = Announce.all.page(params[:page]).per(14)
    if  !(@ance.exists?)
      @tips3 = "--------------------记录为空--------------------"
    end

    @lag = Laborage.where("emp_number = ?", cookies[:emp_num]).all.page(params[:page]).per(14)
    if !(@lag.exists?)
      @tips2 = "--------------------记录为空--------------------"
    end

    @att = Work.where("emp_number = ?", cookies[:emp_num]).all.page(params[:page]).per(14)
    if  !(@att.exists?)
      @tips4 = "--------------------记录为空--------------------"
    end

    @emp = Basic.where("emp_number = ?", cookies[:emp_num]).first
  end

  def showlag
    @lag = Laborage.find(params[:lid])
  end

  def showance
    @ance = Announce.find(params[:anid])
  end

  def showatt
    @att = Work.find(params[:attid])
  end

  def newpwd
    @pwd = Basic.where("emp_number = ?", cookies[:emp_num]).first
  end

  def updatepwd
      @opwd = Basic.where("password = ? AND emp_number = ?", params[:pwd][:password1], cookies[:emp_num]).first
    if @opwd != nil
      @npwd = Basic.find_by(emp_number: cookies[:emp_num])
      @npwd.update(password: params[:pwd][:password2])
    else
      cookies[:tips5] = "旧密码错误，请重新输入"
      redirect_to "/users/newpwd"
    end
  end

  def pwd_params
    params.require(:pwd).permit( :password)
  end

end
