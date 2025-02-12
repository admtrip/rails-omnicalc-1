Rails.application.routes.draw do
  get "/square/new", to: "math#new_square"
  get "/square/result", to: "math#square_result"

  get "/square_root/new", to: "math#new_square_root"
  get "/square_root/result", to: "math#square_root_result"

  get "/payment/new", to: "math#new_payment"
  get "/payment/result", to: "math#payment_result"

  get "/random/new", to: "math#new_random"
  get "/random/result", to: "math#random_result"
end
