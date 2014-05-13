class User < ActiveRecord::Base
	has_many :pizzas, dependent: :destroy
end
