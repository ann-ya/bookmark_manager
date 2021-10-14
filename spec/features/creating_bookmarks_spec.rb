feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.rubyguides.com')
    fill_in('title', with: 'Ruby Guides')
    click_button('Submit')

    expect(page).to have_link('Ruby Guides', href: 'http://www.rubyguides.com')
  end
end