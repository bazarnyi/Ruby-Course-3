# frozen_string_literal: true

class NewProjectPage < SitePrism::Page
  set_url 'https://gitlab.testautomate.me/projects/new#blank_project'

  element :search_field, [:id, "project_name"]
  #element :create_project_button, '[data-qa-selector="get_started_button"]'
  #
  # def type_search_field(text)
  #   search_field.click
  #   search_field.send_keys(text)
  # end
end
