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
  end
  def createdoc
    @doc = Basic.new(doc_params)
    @doc.save
    redirect_to "/managements?page=1"
  end

  def adddoc
  end

  def destroy
      @empid = cookies[:empid]
      emp = Basic.find(@empid)
      emp.destroy
      redirect_to managements_path+"?page=1"
  end
  private
    def doc_params
      params.require(:doc).permit(:emp_number, :emo_name, :emp_sex, :emp_birth, :emp_card, :emp_phone, :emp_address, :password)
    end
end
