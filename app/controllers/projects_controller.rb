class ProjectsController < ApplicationController
  before_action :set_project_item, only: [:edit, :update, :show, :destroy]
  layout "project"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :edit, :update, :sort]}, site_admin: :all

  def index
    @project_items = Project.by_position
  end

  def sort
    params[:order].each do |k, v|
      Project.find(v[:id]).update!(position: v[:position])
    end

    render nothing: true
  end

  def new
    @project_item = Project.new
  end

  def create
    @project_item = Project.new(project_params)

    respond_to do |format|
      if @project_item.save
        format.html { redirect_to projects_path, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @project_item.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    # destroy/delete record
    @project_item.destroy

    # redirect
    respond_to do |format|
      format.html { redirect_to projects_path, notice: 'Project was successfully destroyed.' }
    end
  end

  private

  def project_params
    params.require(:project).permit(
      :title,
      :subtitle,
      :body,
      :main_image,
      :thumb_image,
      technologies_attributes: [:id, :name, :_destroy],
    )
  end

  def set_project_item
    @project_item = Project.find(params[:id])
  end
end
