feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.codecademy.com"
    expect(page).to have_content "http://www.youtube.com"
    expect(page).to have_content "http://www.google.co.uk"
  end
end