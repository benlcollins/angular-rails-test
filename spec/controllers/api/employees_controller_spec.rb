require 'spec_helper'

describe Api::EmployeesController do
	before :each do
		FactoryGirl.create(:employee, name: "Bilbo Baggins")
	end

	describe "get #index" do
		it "should return a JSON array of users" do
			get :index
			result = JSON.parse(response.body)
			expect(result[0]['name']).to eq("Bilbo Baggins")
		end
	end
end