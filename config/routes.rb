Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# 9.ルートパスにアクセスしたときに、prototypesコントローラーのindexアクションを呼び出す記述をroutes.rbにした
# 9.エラーが出たため、ルーティングの全ての記述を試す
# No template for interactive requestは　index.htmlが存在していないから（タイピングのミス）

  root to: "prototypes#index"
end