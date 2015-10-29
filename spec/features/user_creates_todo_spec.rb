require 'rails_helper'

feature 'User creates todo' do

  let(:title) { random_string }

  scenario 'successfully' do
    sign_in
    click_on 'Add a new todo'
    fill_in 'Title', with: title
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: title
  end
end
