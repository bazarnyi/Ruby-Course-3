
Given('I register Project Owner user via API') do
  @project_owner = User.new
  response = create_user_api @project_owner
  @project_owner_id = JSON.parse(response.body)['id']
end

And('I see this Project Owner user is registered via API') do
  response = get_user_api(@project_owner_id)
  #expect(response.code). to eq(200)
end

And('I register Developer user via API') do
  @developer = User.new
  response = create_user_api @developer
  @developer_id = JSON.parse(response.body)['id']
end

And('I see this Developer user is registered via API') do
  response = get_user_api(@developer_id)
end

When('I login to Gitlab with Project Owner user') do
  login_user(@project_owner.username, @project_owner.password)
end

Then('I can see "Create a project" button on the Home page') do
  @home_page = HomePage.new
  link = find(:xpath, "//h3[contains(text(),'Create a project')]")
  link.click
  sleep 1
end

When('I create a new blank project') do
  button = find(:xpath, "//h3[contains(text(),'Create blank project')]")
  button.click
end

Then('I see that project was successfully created') do
  @new_project_page = NewProjectPage.new
  button = find(:css, "input[class='btn gl-button btn-confirm js-create-project-button']")
  button.click
end

# And('I can delete user via API') do
#   delete_user_api(@user_id)
# end
