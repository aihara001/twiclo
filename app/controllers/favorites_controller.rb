class FavoritesController < ApplicationController
    
  def create
    favorite = current_user.favorites.create(twiclo_id: params[:twiclo_id])
    redirect_to twiclos_url, notice: "#{favorite.twiclo.user.name}ブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to twiclos_url, notice: "#{favorite.twiclo.user.name}ブログをお気に入り解除しました"
  end
end
