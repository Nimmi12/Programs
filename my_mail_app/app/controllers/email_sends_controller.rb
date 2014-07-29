class EmailSendsController < ApplicationController
  before_action :set_email_send, only: [:show, :edit, :update, :destroy]


  # GET /email_sends
  # GET /email_sends.json
  def index
    @email_sends = EmailSend.all
  end

  # GET /email_sends/1
  # GET /email_sends/1.json
  def show
  end

  # GET /email_sends/new
  def new
    @email_send = EmailSend.new
  end

  # GET /email_sends/1/edit
  def edit
  end

  # POST /email_sends
  # POST /email_sends.json
  def create
    @email_send = EmailSend.new(email_send_params)
     @email = params[:email_send][:to]
     @subject =params[:email_send][:subject]
     @message =params[:email_send][:message]
    Usermailer.welcome(@email,@subject,@message).deliver

    respond_to do |format|
      if @email_send.save
        format.html { redirect_to @email_send, notice: 'Email send was successfully created.' }
        format.json { render :show, status: :created, location: @email_send }
      else
        format.html { render :new }
        format.json { render json: @email_send.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_sends/1
  # PATCH/PUT /email_sends/1.json
  def update
    respond_to do |format|
      if @email_send.update(email_send_params)
        format.html { redirect_to @email_send, notice: 'Email send was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_send }
      else
        format.html { render :edit }
        format.json { render json: @email_send.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_sends/1
  # DELETE /email_sends/1.json
  def destroy
    @email_send.destroy
    respond_to do |format|
      format.html { redirect_to email_sends_url, notice: 'Email send was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_send
      @email_send = EmailSend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_send_params
      params.require(:email_send).permit(:to, :subject, :message)
    end
end
