require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: 'http://www.codecademy.com', title: 'Codecademy')
    Bookmark.create(url: 'http://www.youtube.com', title: 'YouTube')
    Bookmark.create(url: 'http://www.google.co.uk', title: 'Google')

    visit('/bookmarks')

    expect(page).to have_link('Codecademy', href: 'http://www.codecademy.com')
    expect(page).to have_link('YouTube', href: 'http://www.youtube.com')
    expect(page).to have_link('Google', href: 'http://www.google.co.uk')
  end
end