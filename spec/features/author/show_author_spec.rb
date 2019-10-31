require 'rails_helper'

describe "Show author page", type: :feature do
  
  it "should render withour error" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
  end
  it "should have a text describing the authors properties" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text("Alan Turing. Checkout his homepage http://wikipedia.de/Alan_Turing.")
  end
end