require 'rails_helper'

feature 'User sees own todos' do
  scenario 'doesnt see others todos' do

    Todo.create!(title: 'Buy milk', email: 'another_person@example.com')
    sign_in_as 'someone@example.com'

    expect(page).not_to have_content 'Buy milk'
  end
end
