require 'spec_helper'

feature 'Creating Orders' do
  let!(:book) {Fabricate (:book) }
  let!(:user) {Fabricate (:user) }
  
  before do
    sign_in_as user
  end
  
  scenario 'create a valid book', js: true do
    visit root_path
    click_link 'Catalogs', exact: false
    
    expect(page).to have_content('Order has been created.')
  end
end