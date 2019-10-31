# require 'rails_helper'

describe "Author model", type: :model do
  author_first_name = 'Alan'
  author_last_name = 'Turing'
  author_homepage = 'http://wikipedia.org/Alan_Turing'
  author_name = 'Alan Turing'
  
  author = Author.new({:first_name => author_first_name, 
                       :last_name => author_last_name, 
                       :homepage =>author_homepage})

  it "should have strings first_name, last_name and homepage" do
    expect(author.first_name).to eq(author_first_name)
    expect(author.last_name).to eq(author_last_name)
    expect(author.homepage).to eq(author_homepage)
  end

  it "#name should return the full name" do
    expect(author.name).to eq(author_name)
  end

  it "should have a last name" do
    @author = Author.new({:first_name => author_first_name, 
                          :last_name => "", 
                          :homepage =>author_homepage})

    expect(@author).to_not be_valid
  end

 
end