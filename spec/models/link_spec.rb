require 'rails_helper'

describe Link do
  it 'attributes' do
    link = Link.create(url: "http://turing.io", count: 1)

    expect(link).to respond_to(:url)
    expect(link).to respond_to(:count)
  end
end
