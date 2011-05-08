class SubscriptionsController < ApplicationController
  def create
    subscription = Subscription.new(params[:subscription])
    if subscription.save
      flash[:notice] = "De ahora en adelante te notificaremos cuando este area este en riesgo. Gracias."
    else
      flash[:error] = "Ese email ya esta registrado en esta zona. Gracias por subscribirte."
    end
    redirect_to root_path
  end
end
