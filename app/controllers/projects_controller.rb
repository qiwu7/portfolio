class ProjectsController < ApplicationController
  def index
    @project_items = Project.all
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
    @project_item = Project.find(params[:id])
  end

  def update
    @project_item = Project.find(params[:id])

    respond_to do |format|
      if @project_item.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def project_params
      params.require(:project).permit(
        :title,
        :subtitle,
        :body,
      )
    end
end
