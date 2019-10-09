class PageController < ApplicationController
  # before_action :authenticate_user!

  def create
    Page.create(page: params[:page], read_log: params[:read_log], user_id: current_user.id)
    redirect_to "/"
  end

  def page1
     @page =  Page.find_by user_id: current_user, page: 1 
  end

  def page2
    @page =  Page.find_by user_id: current_user, page: 2 
 end

  def page3
    @page =  Page.find_by user_id: current_user, page: 3 
  end

  def page4
    @page =  Page.find_by user_id: current_user, page: 4
  end

  def page5
    @page =  Page.find_by user_id: current_user, page: 5
  end


  def update
    page =  Page.find_by user_id: current_user, page: 1 
    page.update(page: params[:page], read_log: params[:read_log], user_id: current_user.id)
    redirect_to "/"
  end

  def update2
    page =  Page.find_by user_id: current_user, page: 2 
    page.update(page: params[:page], read_log: params[:read_log], user_id: current_user.id)
    redirect_to "/"
  end

  def update3
    page =  Page.find_by user_id: current_user, page: 3 
    page.update(page: params[:page], read_log: params[:read_log], user_id: current_user.id)
    redirect_to "/"
  end

  def update4
    page =  Page.find_by user_id: current_user, page: 4
    page.update(page: params[:page], read_log: params[:read_log], user_id: current_user.id)
    redirect_to "/"
  end

  def update5
    page =  Page.find_by user_id: current_user, page: 5
    page.update(page: params[:page], read_log: params[:read_log], user_id: current_user.id)
    redirect_to "/"
  end


  

end
