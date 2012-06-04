# coding: utf-8

class FriendsController < ApplicationController
private
  def load_friend
    if params[:id].present?
      @friend = Friend.find(params[:id])
    else
      @friend = Friend.new(params[:friend])
    end
  end

  def load_friends
    #filtros de busca devem ir aqui
    @friends = Friend.all
  end

  before_filter :load_friend, :except => :index
  before_filter :load_friends, :only => :index
public
  def index; end
  def new;   end
  def edit;  end

  def update
    @friend.update_attributes!(params[:friend])
    redirect_to edit_friend_path(@friend), :notice => "Atualizado com sucesso"
  end

  def create
    @friend.save!
    redirect_to edit_friend_path(@friend), :notice => "Criado com sucesso"
  end

  def destroy
    @friend.destroy
    redirect_to friends_path, :notice => "Excluído com sucesso"
  end
end
