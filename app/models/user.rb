class User < ApplicationRecord
	has_many :payment_histories, dependent: :destroy
	validates :first_name, :last_name, :address, :phone_number, presence: true

	accepts_nested_attributes_for :payment_histories, reject_if: proc { |attributes| attributes[:amount].blank? }, allow_destroy: true
end
