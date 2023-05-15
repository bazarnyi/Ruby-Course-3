# frozen_string_literal: true

require 'ffaker'

class User
  attr_reader :username, :password, :firstname, :lastname, :email, :new_project_name

  def initialize
    @firstname = FFaker::Name.first_name
    @lastname = FFaker::Name.last_name
    @username = @firstname + @lastname
    @password = FFaker::Internet.password
    @email = "#{@username}@example.org"
    @new_project_name = "#{@lastname}Project"
  end
end
