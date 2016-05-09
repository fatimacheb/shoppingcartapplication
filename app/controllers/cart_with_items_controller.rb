class CartWithItemsController < ApplicationController
  before_action :set_cart_with_item, only: [:show, :edit, :update, :destroy]

  # GET /cart_with_items
  # GET /cart_with_items.json
 def index
    @cart_with_items = CartWithItem.all
  end

  # GET /cart_with_items/1
  # GET /cart_with_items/1.json
  #def show
  #end

  # GET /cart_with_items/new
  

  # GET /cart_with_items/1/edit
  def edit
  end

  # POST /cart_with_items
  # POST /cart_with_items.json
  def create
    @cart_with_item = CartWithItem.new(cart_with_item_params)

    respond_to do |format|
      if @cart_with_item.save
        format.html { redirect_to @cart_with_item, notice: 'Cart with item was successfully created.' }
        format.json { render :show, status: :created, location: @cart_with_item }
      else
        format.html { render :new }
        format.json { render json: @cart_with_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cart_with_items/1
  # PATCH/PUT /cart_with_items/1.json
  def update
    respond_to do |format|
      if @cart_with_item.update(cart_with_item_params)
        format.html { redirect_to @cart_with_item, notice: 'Cart with item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart_with_item }
      else
        format.html { render :edit }
        format.json { render json: @cart_with_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_with_items/1
  # DELETE /cart_with_items/1.json
  def destroy
    @cart_with_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_with_items_url, notice: 'Cart with item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_with_item
      @cart_with_item = CartWithItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_with_item_params
      params.require(:cart_with_item).permit(:quantity, :user_id, :cart_id)
    end
end
