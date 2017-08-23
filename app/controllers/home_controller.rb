class HomeController < ApplicationController
  def index
  	@projects = Project.all
  	@skills = Skill.all
  	@abouts = About.all
  end
end