class Work < ActiveRecord::Base
	belongs_to :basic, dependent: :destory
end
