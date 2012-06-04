module FriendsHelper

  def actions_for(e)
    
    l = []
    l << link_to("Editar", edit_friend_path(e))
    l << link_to("Deletar", friend_path(e), :method => :delete, :confirm => "Are you sure?")
    
    
    l.join(' ').html_safe
    
    
  end

end
