class SentencesController < ApplicationController
  before_action :set_sentence, only: [:show, :destroy]
  before_action :set_story, only: [:show, :destroy]

  def index
  end

  def new
    @current_image = Dir.new(Rails.root.to_s + "/app/assets/images").to_a.select{|f|    f.downcase.match(/\.jpg|\.jpeg|\.png/) }.sample
    @story = Story.find(params[:story_id])
    @sentence = Sentence.new
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = @story.sentences.new(sentence_params)
    if @sentence.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @sentence.update(sentence_params)
      redirect_to story_sentence_path(@story, sentence)
    else
      render :edit
    end
  end

  def destroy
    if @sentence.destroy
      redirect_to story_path(@story)
    else
      redirect_to story_path(@story)
    end
  end

  private

  def set_sentence
    @sentence = Sentence.find(params[:id])
  end

  def set_story
    @story = Story.find(params[:story_id])
  end

  def sentence_params
    params.permit(:content, :user_id, :story_id, :image_url)
  end

end
