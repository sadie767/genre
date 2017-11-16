require 'rails_helper'

describe "the add a photo process" do
  it "adds a new photo" do
    visit photos_path
    click_link 'New Photo'
    fill_in 'Url', :with => 'http://viola.bz/wp-content/uploads/2012/08/Paintings-by-Vladimir-Ryabchikov-1-500x648.jpg'
    fill_in 'Title', :with => 'stuff'
    fill_in 'Description', :with => 'stuff'
    click_on 'Create Photo'
    expect(page).to have_content 'Photo'
  end

  it "gives error when no name is entered" do
    visit new_photo_path
    click_on 'Create Photo'
    expect(page).to have_content 'errors'
  end
end
