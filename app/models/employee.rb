class Employee < ActiveRecord::Base
	validates :name, presence: true
	validates_format_of :email, with: /\A[a-z\d\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :ssn, with: /\d{3}-\d{2}-\d{4}/
	validates :salary, numericality: { only_integer: true }
end
