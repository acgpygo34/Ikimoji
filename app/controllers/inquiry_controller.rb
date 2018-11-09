class InquiryController < ApplicationController

  def new
    @inquiry = Inquiry.new
    respond_to do |format|
      format.html{}
      format.js {}
      end
  end

  def index
    # 入力画面を表示
    @inquiry = Inquiry.new
    render :action => 'index', :layout => "second_layout"
  end

  def confirm
    # 入力値のチェック
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.valid?
      # OK。確認画面を表示
      render :action => 'confirm', :layout => "second_layout"
    else
      # NG。入力画面を再表示
      render :action => 'index', :layout => "second_layout"
    end
  end

  def thanks
    # メール送信
    @inquiry = Inquiry.new(inquiry_params)
    @mail = InquiryMailer.send_mail(@inquiry).deliver
    # 完了画面を表示
    render :action => 'thanks', :layout => "second_layout"

  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :subject, :text_message)
  end

end


