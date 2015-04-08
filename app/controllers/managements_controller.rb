class ManagementsController < ApplicationController
	def index
		unless request.get?
			username = params[:basic][:emp_number]
			password = params[:basic][:password]
			@hint = "OK"
			@user = Basic.find_by emp_number: username
			if @user.class == NilClass
				@hint = "员工编码不存在！"
				render action: 'index', controller: 'login'
			elsif @user.password == params[:basic][:password]
				@hint = "欢迎回来"
				redireact_to  action: 'show'
			end
		end
	end

	def create
	end
end
