require 'spec_helper'

feature 'Creating Books' do
  let!(:wiley) { Fabricate(:publisher) }
  let!(:author1) { Fabricate(:author) }
  let!(:author2) { Fabricate(:author) }

  scenario 'create a valid book' do
    visit root_path
    click_link 'Books', exact: false
    click_link 'Add New book'
     
    fill_in 'Title', with: 'Javascript'
    fill_in 'Isbn', with: '9780321772978'
    fill_in 'Page count', with: 518
    fill_in 'Price', with: 34.99
    fill_in 'Description', with: 'Learn Javascript the quick and easy way'
    fill_in 'Published At', with: '2012-01-01'
    select 'Peachpit Press', from: 'Publisher'
    attach_file 'Book cover', 'app/assets/images/itext.jpg'
    check author1.full_name
    check author2.full_name
    click_button 'Create Book'
    expect(page).to have_content('Book has been created.') 
   end 
  
  scenario 'create a book with invalid fields fails' do
    visit root_path
    click_link 'Books', exact: false
    click_link 'Add New book'
     
    fill_in 'Title', with: 'Javascript'
    fill_in 'Isbn', with: '9780321772978'
    fill_in 'Page count', with: 518
    fill_in 'Price', with: 34.99
    fill_in 'Description', with: 'Learn Javascript the quick and easy way'
    fill_in 'Published At', with: '2012-01-01'
    select 'Peachpit Press', from: 'Publisher'
    attach_file 'Book cover', 'app/assets/images/itext.jpg'
    check author1.full_name
    check author2.full_name
    click_button 'Create Book'
    expect(page).to have_content('Book has been created.') 
    expect(page).to have_content('Cannot be blank') 
   end 

end