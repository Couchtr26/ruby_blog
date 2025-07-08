class NewsletterSubscribersController < ApplicationController
  before_action :set_newsletter_subscriber, only: %i[ show edit update destroy ]

  # GET /newsletter_subscribers or /newsletter_subscribers.json
  def index
    @newsletter_subscribers = NewsletterSubscriber.all
  end

  # GET /newsletter_subscribers/1 or /newsletter_subscribers/1.json
  def show
  end

  # GET /newsletter_subscribers/new
  def new
    @newsletter_subscriber = NewsletterSubscriber.new
  end

  # GET /newsletter_subscribers/1/edit
  def edit
  end

  # POST /newsletter_subscribers or /newsletter_subscribers.json
  def create
    @newsletter_subscriber = NewsletterSubscriber.new(newsletter_subscriber_params)

    respond_to do |format|
      if @newsletter_subscriber.save
        format.html { redirect_to @newsletter_subscriber, notice: "Newsletter subscriber was successfully created." }
        format.json { render :show, status: :created, location: @newsletter_subscriber }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newsletter_subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletter_subscribers/1 or /newsletter_subscribers/1.json
  def update
    respond_to do |format|
      if @newsletter_subscriber.update(newsletter_subscriber_params)
        format.html { redirect_to @newsletter_subscriber, notice: "Newsletter subscriber was successfully updated." }
        format.json { render :show, status: :ok, location: @newsletter_subscriber }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newsletter_subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_subscribers/1 or /newsletter_subscribers/1.json
  def destroy
    @newsletter_subscriber.destroy!

    respond_to do |format|
      format.html { redirect_to newsletter_subscribers_path, status: :see_other, notice: "Newsletter subscriber was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter_subscriber
      @newsletter_subscriber = NewsletterSubscriber.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def newsletter_subscriber_params
      params.expect(newsletter_subscriber: [ :email, :confirmed ])
    end
end
