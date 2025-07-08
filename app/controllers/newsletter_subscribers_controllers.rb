class NewsletterSubscribersController < ApplicationController
  def create
    @newsletter_subscriber = NewsletterSubscriber.new(newsletter_subscriber_params)

  respond_to do |format|    
    if @newsletter_subscriber.save
      format.html { redirect_to root_path, notice: "Newsletter subscriber was successfully created." }  
      format.json { render :show, status: :created, location: root_path }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @newsletter_subscriber.errors, status: :unprocessable_entity }
    end
  end
end

  private

  def newsletter_subscriber_params
    params.require(:newsletter_subscriber).permit(:email, :confirmed)
  end
  
  def confirm
    @subscriber = NewsletterSubscriber.find(params[:id])

    if @subscriber.confirmation_token == params[:token]
      @subscriber.confirm!
      redirect_to root_path, notice: "🎉 You're confirmed and subscribed!"
    else
      redirect_to root_path, alert: "Invalid confirmation token."
    end
  end     
end          