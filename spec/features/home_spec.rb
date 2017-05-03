require 'rails_helper'

RSpec.describe "Exchange currency process", type: :feature do
  it 'convert value' do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'currency')
      select('USD', from: 'currency_destination')
      fill_in 'quantity', with: 10
    end
    click_button 'CONVERT'

    # save_and_open_page
    expect(page).to have_content("value")
  end
end
