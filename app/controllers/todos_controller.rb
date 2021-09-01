class TodosController < ApplicationController
  before_action :set_todo, only: [:show,:update,:destroy]


  #Get all Todos
  def index
    @todos =Todo.all
    json_response(@todos)
  end

  #POST createTodo
  def create
    @todo= Todo.create!(todo_params)
    json_response(@todo,:created)
  end

  def show
    json_response(@todo)
  end

  def update
    @todo =Todo.update(todo_params)
    head :no_content
  end

  def destroy
    @todo.destroy
    head :no_content
  end

  def todo_params
    params.permit(:title,:created_by)
  end

  def set_todo
    @todo =Todo.find(params[:id])
  end

end
