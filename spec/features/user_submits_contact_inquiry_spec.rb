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
      fill_in 'email', with: 'test@test.com'
      fill_in 'subject', with: 'Example'
      fill_in 'description', with: 'Some text here.'
      fill_in 'first_name', with: 'Jane'
      fill_in 'last_name', with: 'Doe'

      click_on 'Submit Inquiry'
      expect(page).to have_content('Inquiry was successfully created!')
    end
  end
end
