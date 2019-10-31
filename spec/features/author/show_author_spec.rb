require 'rails_helper'

describe "Show author page", type: :feature do
  
  FactoryBot.create :author

  it "should render withour error" do
    visit author_path(@alan)
  end

  it "should have a text describing the authors properties" do
    visit author_path(@alan)
    expect(page).to have_text('This is Alan Turing. Checkout his homepage http://wikipedia.de/Alan_Turing')
  end
end