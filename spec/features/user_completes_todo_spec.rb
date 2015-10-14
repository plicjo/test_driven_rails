require 'rails_helper'

feature 'user completes to do' do
  scenario 'successfully' do
    sign_in

    create_todo 'Buy milk'
    click_on 'Mark Complete'

    expect(page).to have_css '.todos li.completed', text: 'Buy milk'
  end
end
