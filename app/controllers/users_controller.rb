class UsersController < ApplicationController
  def index
    # render text: "Hola"
    @users = User.select("id", "f_name", "l_name", "email")
    # render json: User.select("id", "f_name", "l_name", "email")
    render ('/users/index')
  end

  def new
    render ('/users/new')
  end

  def create
    @users = User.create(f_name: params[:f_name], l_name: params[:l_name], email: params[:email])
    redirect_to '/users'
    # render json: params
  end

  def show
    @id = params[:id]

    @user = User.find(params[:id])

    print @user.f_name, "<== This is the user "

    print @id, "<== This is the params"
    render ('/users/show')
  end

  def edit
    render ('/users/edit')
  end

  def delete
    @id = params[:id]
    User.find(params[:id]).destroy
    redirect_to '/users'
  end

  def update
    #Update
    @id = params[:id]
    User.find(params[:id]).destroy
    redirect_to '/users'
  end

  def total
  end
end
