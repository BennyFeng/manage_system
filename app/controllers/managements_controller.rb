class ManagementsController < ApplicationController
  def index
    cookies[:hint] = ''
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
    if  !(@emp.exists?)
      @tips = "--------------------记录为空--------------------"
    end
    @lag = Laborage.all
    if  !(@lag.exists?)
      @tips = "--------------------记录为空--------------------"
    end
    @ance = Announce.all
    if  !(@ance.exists?)
      @tips = "--------------------记录为空--------------------"
    end
  end

  def showdoc
    @emp = Basic.find(params[:eid])
  end

  def createdoc
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

end
