class PeopleController < ApplicationController
  before_action :authenticate_user!
private
  def person_params
    params.require(:person).permit(:surname, :name, :father_name, :fakultet, :course, :group, :ssilka, :id_head)
  end
  
public
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(person_params)
    
    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end
  
  def show
    @person = Person.find(params[:id])
  end
  
  def index
    @people = Person.all
  end
  
  def edit
    @person = Person.find(params[:id])
  end
  
  def update
    @person = Person.find(params[:id])

  if @person.update(person_params)
    redirect_to @person
  else
    render 'edit'
  end 
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    
    redirect_to people_path
  end 
end
