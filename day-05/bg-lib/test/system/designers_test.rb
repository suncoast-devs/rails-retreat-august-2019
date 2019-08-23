require "application_system_test_case"

class DesignersTest < ApplicationSystemTestCase
  setup do
    @designer = create(:designer)
    @new_designer = build(:designer)

    sign_in
  end

  test "visiting the index" do
    visit designers_url
    assert_selector "h1", text: "Designers"
  end

  test "creating a Designer" do
    visit designers_url
    click_on "New Designer"

    fill_in "Name", with: @new_designer.name
    fill_in "Biography", with: @new_designer.biography
    click_on "Create Designer"

    assert_text "#{@new_designer.name} was successfully created"
  end

  test "creating an incomplete Designer" do
    visit designers_url
    click_on "New Designer"
    click_on "Create Designer"
    assert_text "error prohibited this designer from being saved"
  end

  test "updating a Designer" do
    visit designer_url(@designer)
    click_on "Edit", match: :first

    fill_in "Name", with: @designer.name
    fill_in "Biography", with: @designer.biography
    click_on "Update Designer"

    assert_text "#{@designer.name} was successfully updated"
  end

  test "updating an Designer to be incomplete" do
    visit designer_url(@designer)
    click_on "Edit", match: :first

    fill_in "Name", with: ""
    click_on "Update Designer"

    assert_text "error prohibited this designer from being saved"
  end

  test "destroying a Designer" do
    visit designer_url(@designer)
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "#{@designer.name} was successfully destroyed"
  end
end
