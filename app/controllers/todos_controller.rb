class TodosController < ApplicationController

# before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])

  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    # NB the todo_params is the private method below, for security
    @todo.save
    redirect_to todos_path
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
    redirect_to todo_path(@todo)
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :details)
  end
end
