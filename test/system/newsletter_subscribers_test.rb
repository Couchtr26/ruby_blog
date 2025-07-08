require "application_system_test_case"

class NewsletterSubscribersTest < ApplicationSystemTestCase
  setup do
    @newsletter_subscriber = newsletter_subscribers(:one)
  end

  test "visiting the index" do
    visit newsletter_subscribers_url
    assert_selector "h1", text: "Newsletter subscribers"
  end

  test "should create newsletter subscriber" do
    visit newsletter_subscribers_url
    click_on "New newsletter subscriber"

    check "Confirmed" if @newsletter_subscriber.confirmed
    fill_in "Email", with: @newsletter_subscriber.email
    click_on "Create Newsletter subscriber"

    assert_text "Newsletter subscriber was successfully created"
    click_on "Back"
  end

  test "should update Newsletter subscriber" do
    visit newsletter_subscriber_url(@newsletter_subscriber)
    click_on "Edit this newsletter subscriber", match: :first

    check "Confirmed" if @newsletter_subscriber.confirmed
    fill_in "Email", with: @newsletter_subscriber.email
    click_on "Update Newsletter subscriber"

    assert_text "Newsletter subscriber was successfully updated"
    click_on "Back"
  end

  test "should destroy Newsletter subscriber" do
    visit newsletter_subscriber_url(@newsletter_subscriber)
    accept_confirm { click_on "Destroy this newsletter subscriber", match: :first }

    assert_text "Newsletter subscriber was successfully destroyed"
  end
end
