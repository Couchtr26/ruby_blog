require "test_helper"

class NewsletterSubscribersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newsletter_subscriber = newsletter_subscribers(:one)
  end

  test "should get index" do
    get newsletter_subscribers_url
    assert_response :success
  end

  test "should get new" do
    get new_newsletter_subscriber_url
    assert_response :success
  end

  test "should create newsletter_subscriber" do
    assert_difference("NewsletterSubscriber.count") do
      post newsletter_subscribers_url, params: { newsletter_subscriber: { confirmed: @newsletter_subscriber.confirmed, email: @newsletter_subscriber.email } }
    end

    assert_redirected_to newsletter_subscriber_url(NewsletterSubscriber.last)
  end

  test "should show newsletter_subscriber" do
    get newsletter_subscriber_url(@newsletter_subscriber)
    assert_response :success
  end

  test "should get edit" do
    get edit_newsletter_subscriber_url(@newsletter_subscriber)
    assert_response :success
  end

  test "should update newsletter_subscriber" do
    patch newsletter_subscriber_url(@newsletter_subscriber), params: { newsletter_subscriber: { confirmed: @newsletter_subscriber.confirmed, email: @newsletter_subscriber.email } }
    assert_redirected_to newsletter_subscriber_url(@newsletter_subscriber)
  end

  test "should destroy newsletter_subscriber" do
    assert_difference("NewsletterSubscriber.count", -1) do
      delete newsletter_subscriber_url(@newsletter_subscriber)
    end

    assert_redirected_to newsletter_subscribers_url
  end
end
