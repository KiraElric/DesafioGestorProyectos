class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard

  def dashboard
    if params[:state].present?
      @projects = Project.where("state = ?", params[:state])
    else
      @projects = Project.all
    end
  end

  def create
    @project = Project.create(name_project: params[:name_project], description: params[:description], date_start: params[:date_start], date_finish: params[:date_finish], state: params[:state])
  end

  def form
  end
end
