class LobbyController < ApplicationController
  def home
    @photos = [User.first.avatar, User.first.avatar]
  end
end
