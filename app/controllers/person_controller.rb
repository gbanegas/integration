class PersonController < ApplicationController
  def new
  end
 
  def create
    @person = Person.new(params[:person])


    @person.save
    redirect_to @person
  end

  def show
    @person = Person.find(params[:id])
  end

  private
    def person_params
      params.require(:person).permit(:name,:last_name)
    end

end
