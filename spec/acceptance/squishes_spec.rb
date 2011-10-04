require 'acceptance/acceptance_helper'

feature "Squishes", %q{
  In order to be better than my friends
  As a kid
  I want to create and manage my squishes
} do

  background do
    Squishable::Squish.create!(:squash => 'Squoshy Squish')
    Squishable::Squish.create!(:squash => 'Sploshy Squish')
  end

  scenario "View a list of squishes" do
    visit '/squishable/squishes'
    page.should have_content('Squoshy Squish')
    page.should have_content('Sploshy Squish')
  end
end
