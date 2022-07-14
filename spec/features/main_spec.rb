require "rails_helper"

RSpec.describe "Main" do

  scenario "it does the thing" do
    visit "/webpages"

    click_on "New webpage"

    fill_in "Url", with: "https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/"
    click_button "Create Webpage"

    expect(Webpage.count).to eq(1)
  end
end
