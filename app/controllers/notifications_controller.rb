class NotificationsController < ApplicationController
   def create
    AgentTexter.alert(params).deliver
    redirect_to root_url,
    success: 'Alert was Generated'
   rescue Twilio::REST::RequestError => error
     redirect_to root_url,
     error: 'Oops! There was an error. Please try again.'
   end
end