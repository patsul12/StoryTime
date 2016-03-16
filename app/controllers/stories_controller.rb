class StoriesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_user, only: [:create]
  before_action :set_story, only: [:show, :destroy, :update, :edit]

  def index
    @stories = Story.all
  end

  def show
    @sentences = @story.sentences
  end

  def new
    @story = Story.new
  end

  def create
    @story = @user.stories.new(story_params)
    if @story.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @story.update(story_params)
      redirect_to story_path(@story)
    else
      redirect_to story_path(@story)
    end
  end

  def destroy
    if @story.destroy
      redirect_to root_path
    else
      redirect_to stories_path(@story)
    end
  end

  private

  def set_user
    @user = User.find(params[:story][:user_id])
  end

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:title, :user_id)
  end
end
