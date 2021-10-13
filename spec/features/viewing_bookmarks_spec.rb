require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    #Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.codecademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.youtube.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.co.uk');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.codecademy.com"
    expect(page).to have_content "http://www.youtube.com"
    expect(page).to have_content "http://www.google.co.uk"
  end
end