class UsersController < ApplicationController
   def new
    @corporate = Corporate.new
   end
   def create
    @corporate = Corporate.new(params[:corporate])
    if @corporate.save
        flash[:notice] = "You signed up successfully"
        flash[:color]= "valid"
    else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
    end
    render "new"
   end 
end
