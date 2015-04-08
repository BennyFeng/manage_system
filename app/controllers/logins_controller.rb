class LoginsController < ApplicationController
	def login
	end
	def idenity
		unless request.get?
			username = params[:emp_number]
			password = params[:password]
			@hint = "ok"
			@user = Basic.find_by emp_number: username
			if @user.class == NilClass
				@hint = '用户不存在！'
				render action: 'login'
			elsif @user.password == params[:password]
				redirect_to controller: 'managements', action: 'index'
			else
				@hint = "登录失败，请检查您的登录信息是否有误"
			end
		end
	end
end
