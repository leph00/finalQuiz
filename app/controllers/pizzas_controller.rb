class PizzasController < ApplicationController
  #before_action :signed_in_user

  def create
    @pizza = current_user.pizzas.build(pizza_params)
    if @pizza.save
      flash[:success] = "Pizza created!"
      redirect_to root_url
    else
      render 'user#show'
    end
  end

  def destroy
  end

  private

    def pizza_params
      params.require(:pizza).permit(:toppings)
    end
end