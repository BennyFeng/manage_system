class Laborage < ActiveRecord::Base
	belongs_to :basic, dependent: :destroy
end
