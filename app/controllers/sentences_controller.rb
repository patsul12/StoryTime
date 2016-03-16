class SentencesController < ApplicationController
  before_action :set_sentence, only: [:show]

  def index
  end

  def new
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
  end

  def delete
  end

  private

  def set_sentence
    @sentence = Sentence.find(params[:id])
  end

  def sentence_params
    params.permit(:content, :user_id, :story_id, :image_url)
  end

end
