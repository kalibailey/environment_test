# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: 6.95
    fill_in 'Publish date', with: '2010-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J. K. Rowling')
    expect(page).to have_content(6.95)
    expect(page).to have_content('2010-10-10')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Lion the Witch and the Wardrobe'
    fill_in 'Author', with: 'C. S. Lewis'
    fill_in 'Price', with: 8.95
    fill_in 'Publish date', with: '2011-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Lion the Witch and the Wardrobe')
    expect(page).to have_content('C. S. Lewis')
    expect(page).to have_content(8.95)
    expect(page).to have_content('2011-10-10')
  end

  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'The Two Towers'
    fill_in 'Author', with: 'J. R. R. Tolkien'
    fill_in 'Price', with: 11.95
    fill_in 'Publish date', with: '2011-10-10'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('The Two Towers')
    expect(page).to have_content('J. R. R. Tolkien')
    expect(page).to have_content(11.95)
    expect(page).to have_content('2011-10-10')
  end

    
end