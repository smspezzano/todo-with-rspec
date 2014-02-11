class TodosController < ActionController::Base

	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		new_todo = params[:todo].permit(:title)
		@todo = Todo.create(new_todo)
		redirect_to "/todos/new"
	end

	def show
		id = params(:id)
		@todo=Todo.find(id)
	end


end