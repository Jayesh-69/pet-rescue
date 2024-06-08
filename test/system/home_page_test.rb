require "application_system_test_case"

class HomeCustomePage < ApplicationSystemTestCase
  setup do
    @user = create(:user)
    @organization = @user.organization
    set_organization(@organization)
  end

  test "renders custom hero and about text from CustomPage or default text" do
    CustomPage.create(hero: "Super Pets for a good paws", about: "All about us")

    visit home_index_path
    assert_text "Super Pets for a good paws"
    assert_text "All about us"
  end
end
