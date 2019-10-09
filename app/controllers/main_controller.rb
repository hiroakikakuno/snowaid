class MainController < ApplicationController
  before_action :authenticate_user!

 def top 
  @curriculum = Curriculum.all
  @page = Page.all
 end

 def new
 end


 def create
  Curriculum.create(title: params[:title], image: params[:image] , lesson1: params[:lesson1], url_1: params[:url_1], lesson2: params[:lesson2], url_2: params[:url_2], lesson3: params[:lesson3], url_3: params[:url_3], lesson4: params[:lesson4], url_4: params[:url_4], lesson5: params[:lesson5], url_5: params[:url_5] , user_id: current_user.id )
  # , user_id: current_user.id ※デバイス導入後、あとで↑に追加する
  redirect_to "/"
end





end
