Rails.application.routes.draw do
  root 'throw#index'

  get 'throw/:sign' => 'throw#sign'

end
