require 'rails_helper'

feature 'User marks todo incomplete' do

  let(:title) { random_string }

  scenario 'successfully' do
    sign_in

    create_todo title

    click_on 'Mark Complete'
    click_on 'Mark Incomplete'

    expect(page).not_to have_css '.todos li.completed', text: title
    expect(page).to have_css '.todos li', text: title
  end
end
