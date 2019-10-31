# require 'rails_helper'

describe "Author model", type: :model do
  author_first_name = 'Alan'
  author_last_name = 'Turing'
  author_homepage = 'http://wikipedia.org/Alan_Turing'
  
  it "should have strings first name, lastname and homepage" do
    author = Author.new(author_first_name, author_last_name, author_homepage)

    expect(author.first_name).to eq(author_first_name)
    expect(author.first_name).to eq(author_last_name)
    expect(author.first_name).to eq(author_homepage)
  end
end