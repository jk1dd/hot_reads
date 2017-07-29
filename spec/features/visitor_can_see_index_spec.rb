require 'rails_helper'

describe "visitor" do
  it 'can view links on the hotreads page' do
    Link.create(url: "http://turing.io", count: 1)
    Link.create(url: "http://www.bbc.com/news", count: 2)

    visit root_path

    expect(page).to have_content('2. http://turing.io')
    expect(page).to have_content('1. http://www.bbc.com/news')

  end
end
