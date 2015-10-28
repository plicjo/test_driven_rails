require 'rails_helper'

feature 'user completes to do' do

  let(:title) { random_string }

  scenario 'successfully' do
    sign_in

    create_todo title
    click_on 'Mark Complete'

    expect(page).to have_css '.todos li.completed', text: title
  end
end
