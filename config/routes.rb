TodoWithRspec::Application.routes.draw do

	get "/todos", to: "todos#index"
	get "/todos/:id/show", to: "todos#show"
	get "/todos/new", to: "todos#new", as: "new_todo"
	post "/todos", to: "todos#create"
end
