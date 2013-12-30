require 'spec_helper'

describe Contact do
  it { should validate_presence_of :first_name}
  it { should validate_presence_of :last_name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :subject}
  it { should validate_presence_of :description}

  it 'can find number of contacts from last name' do
    contact1 = FactoryGirl.create(:contact, last_name: "Smith")
    contact2 = FactoryGirl.create(:contact, last_name: "Smith")
    contact3 = FactoryGirl.create(:contact)

    expect(Contact.find_contact("Smith")).to eq(2)
  end
end
