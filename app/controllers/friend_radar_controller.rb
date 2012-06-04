class FriendRadarController < ApplicationController
  def index
    
    params[:limit] = 3 if params[:limit].blank?
    
    @friends =  if params[:lat].present? && params[:long].present?
                  Friend.near_of(params[:lat], params[:long]).all(:limit => params[:limit])
                else
                  []
                end    
  end
end
