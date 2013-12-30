require 'spec_helper'

feature 'User submits contact inquiry' do

  # I must specify a valid email address
  # I must specify a subject
  # I must specify a description
  # I must specify a first name
  # I must specify a last name
  context 'happy path' do
    it 'creates contact form submission' do
      visit '/contacts/new'
      fill_in 'Email', with: 'test@test.com'
      fill_in 'Subject', with: 'Example'
      fill_in 'Description', with: 'Some text here.'
      fill_in 'First name', with: 'Jane'
      fill_in 'Last name', with: 'Doe'

      click_on 'Save Contact'
      expect(page).to have_content('Contact was successfully created!')
    end
  end


  context 'sad path' do
    it 'creates contact form without first name' do
      visit '/contacts/new'
      fill_in 'Email', with: 'test@test.com'
      fill_in 'Subject', with: 'Example'
      fill_in 'Description', with: 'Some text here.'
      fill_in 'Last name', with: 'Doe'

      click_on 'Save Contact'
      expect(page).to have_content('First name can\'t be blank')
    end
  end

  context 'using factory girl for index display verification' do
    it 'displays created records on index page' do
      contacts = FactoryGirl.create_list(:contact, 5)
      visit '/contacts'
      expect(page).to have_content('john3@example.com')

    end

  end


end
