require 'rails_helper'

feature 'User sees own todos' do

  let(:title) { random_string }

  scenario 'doesnt see others todos' do

    Todo.create!(title: title, email: 'another_person@example.com')
    sign_in_as 'someone@example.com'

    expect(page).not_to have_content title
  end
end
