class LoginsController < ApplicationController
  def login
    session[:emp_id] = nil
    cookies[:emp_num] = ''
    unless request.get?
      @hint = "ok"
        @id = params[:basic][:idenity]
        @emp_num = params[:basic][:emp_number]

        if @id == '1'
          @user = Basic.where("emp_number = ?", params[:basic][:emp_number]).first
          else
          @user = Admin.where("username = ?", params[:basic][:emp_number]).first
        end

        if @user == nil
          cookies[:hint] = '用户不存在！'
          render action: 'login'
        elsif @user.password == params[:basic][:password]
          session[:emp_id] = @id
          cookies[:emp_num] = @emp_num
          if @id == '1'
            render '/users/wait.html.erb'
          elsif @id == '2'
            render '/managements/wait.html.erb'
          end
        else
          cookies[:hint] = "登录失败，请检查您的登录信息是否有误"
        end
    end
  end

  private

  def basic_params
    params.require(:basic).permit(:emp_number, :password)
  end
end


