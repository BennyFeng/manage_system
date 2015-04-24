class ManagementsController < ApplicationController
  def index
    cookies[:hint] = ''
    cookies[:tips5] = ''
    @tips = ''
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
    if params[:pg] == '1'
      @pg = "doc.html.erb"
    elsif params[:pg] == '2'
      @pg = "lag.html.erb"
    elsif params[:pg] == '3'
      @pg = "att.html.erb"
    else
      @pg = "announce.html.erb"
    end
    @emp = Basic.all.page(params[:page]).per(14)
    if  !(@emp.exists?)
      @tips1 = "--------------------记录为空--------------------"
    end
    @lag = Laborage.all.page(params[:page]).per(14)
    if  !(@lag.exists?)
      @tips2 = "--------------------记录为空--------------------"
    end
    @ance = Announce.all.page(params[:page]).per(14)
    if  !(@ance.exists?)
      @tips3 = "--------------------记录为空--------------------"
    end
    @att = Work.all.page(params[:page]).per(14)
    if  !(@att.exists?)
      @tips4 = "--------------------记录为空--------------------"
    end
  end

  def showdoc
    @emp = Basic.find(params[:eid])
  end

  def createdoc
    cookies[:hint1] = ""
    cookies[:hint2] = ""
    if params[:doc][:emp_number].size >8 
      cookies[:hint1] = "员工编号不能超过8个数字"
      if params[:doc][:password].size < 8
        cookies[:hint2] = "密码不能少于8位"
      end
      redirect_to "/managements/adddoc"
    elsif params[:doc][:emp_number].size <4 
      cookies[:hint1] = "员工编号不能少于6个数字"
      if params[:doc][:password].size < 8
        cookies[:hint2] = "密码不能少于8位"
      end
      redirect_to "/managements/adddoc"
    end
    if params[:doc][:password].size < 8
      cookies[:hint2] = "密码不能少于8位"
      redirect_to "/managements/adddoc"
    end
    @doc = Basic.new(doc_params)
    if @doc.save
      @alert = 1
    else
      @alert = 0
    end
  end

  def editdoc
    @emp = Basic.find(params[:eid])
  end

  def updatedoc
    @emp = Basic.find(params[:doc][:id])
    if @emp.update(doc_params)
      @alert = 1
    else
      @alert = 0
    end
  end

  def adddoc
  end

  def deletedoc
      @emp = Basic.find(params[:eid])
      if @emp.destroy
        @alert = 1
      else
        @alert = 0
      end
  end

  def addlag
  end

  def createlag
    @lag = Laborage.new(lag_params)
    if @lag.save
      @alert = 1
    else
      @alert = 0
    end
  end

  def showlag
    @lag = Laborage.find(params[:lid])
  end

  def deletelag
      @lag = Laborage.find(params[:lid])
      if @lag.destroy
        @alert = 1
      else
        @alert = 0
      end
  end

  def editlag
    @lag = Laborage.find(params[:lid])
  end

  def updatelag
    @lag = Laborage.find(params[:lag][:id])
    if @lag.update(lag_params)
      @alert = 1
    else
      @alert = 0
    end
  end

  def addance
  end

  def createance
    @ance = Announce.new(ance_params)
    if @ance.save
      @alert = 1
    else
      @alert = 0
    end
  end

  def showance
    @ance = Announce.find(params[:anid])
  end

  def deleteance
      @ance = Announce.find(params[:anid])
      if @ance.destroy
        @alert = 1
      else
        @alert = 0
      end
  end

  def editance
    @ance = Announce.find(params[:anid])
  end

  def updateance
    @ance = Announce.find(params[:ance][:id])
    if @ance.update(ance_params)
      @alert = 1
    else
      @alert = 0
    end
  end

  def addatt
  end

  def createatt
    @att = Work.new(att_params)
    if @att.save
      @alert = 1
    else
      @alert = 0
    end
  end

  def showatt
    @att = Work.find(params[:attid])
  end

  def deleteatt
      @att = Work.find(params[:attid])
      if @att.destroy
        @alert = 1
      else
        @alert = 0
      end
  end

  def editatt
    @att = Work.find(params[:attid])
  end

  def updateatt
    @att = Work.find(params[:att][:id])
    if @att.update(att_params)
      @alert = 1
    else
      @alert = 0
    end
  end

  def newpwd
    @pwd = Admin.where("username = ?", cookies[:emp_num]).first
  end

  def updatepwd
      @opwd = Admin.where("password = ? AND username = ?", params[:pwd][:password1], cookies[:emp_num]).first
    if @opwd != nil
      @npwd = Admin.find_by(username: cookies[:emp_num])
      @npwd.update(password: params[:pwd][:password2])
    else
      cookies[:tips5] = "旧密码错误，请重新输入"
      redirect_to "/managements/newpwd"
    end
  end

  def authdoc
    cookies[:eid] = params[:eid]
    @emp = Basic.find_by("id = ?", cookies[:eid])
  end

  def createadmin
    @auth = Admin.new(auth_params)
    @auth.save
  end

  def uauthdoc
    @uaut = Admin.where("username = ?", cookies[:uaut]).first
    @uaut.destroy
  end

  private
    def doc_params
      params.require(:doc).permit(:emp_number, :emo_name, :emp_sex, :emp_birth, :emp_card, :emp_phone, :emp_address, :password)
    end

    def lag_params
      params.require(:lag).permit(:pay_month, :emp_name, :emp_number, :pay_basic, :pay_prize, :pay_overtime, :pay_recoup, :pay_payable, :pay_paymoney)
    end

    def ance_params
      params.require(:ance).permit(:tittle, :author, :post)
    end

    def att_params
      params.require(:att).permit(:number, :emp_number, :emp_holiday, :lateleave, :lateleave_date, :emp_lateleave_money, :emp_private_money)
    end

  def pwd_params
    params.require(:pwd).permit( :password)
  end

  def auth_params
    params.require(:auth).permit( :password, :username)
  end

end
