class PersonController < ApplicationController
    def index
        @person = Person.all
    end

    def show
        @person = Person.find(params[:id])
    end

    def new
    end

    def create
        @person = Person.new(params[:person])
        @person.save
        redirect_to @person
    end
    private
        def article_params
            params.require(:person).permit(:name, :last_name, :email, :company,:job_title, :phone, :website)
        end
end
