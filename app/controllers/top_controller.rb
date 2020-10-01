class TopController < ApplicationController

    def index
        @lists = List.where(user: current_user).order("creste_at ASC")
    end
end
