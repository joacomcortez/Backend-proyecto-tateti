class BoardController < ApplicationController
  def index
		@boards = Board.all
		render json: {boards: @boards}	
	end


	def show

    @board = Board.find_by(params[:id])
    if @board.exists?
		render status: 200, json: { board: @board}
    else  
    render status: 400, json: {message: "board not found"}

	end

  def create

    @board = Board.new
      
      if @board.save
            render status:200,json:{board:@board}
      else
            render status:400,json:{message:@board.error.details}
     end
      
  end

  def move 
    @board = Board.find_by(:id)
    a = @board.array
    arreglo = JSON.parse a
    if @board.turn % 2 == 0
      arreglo[params[:position]] = 'X'
      @board.turn = @board.turn + 1
      @board.array = arreglo.to_json
      @board.save
      checkWinner
      @board.save
      render status: 200, json:{board: @board}
    else 
      arreglo[params[:position]] = 'O'
      @board.turn = @board.turn + 1
      @board.array = arreglo.to_json
      @board.save
      checkWinner
      @board.save
      render status: 200, json:{board: @board}
    end

  end

  def checkWinner
    a = JSON.parse @board.array
    if  a[0] == a[1] && a[1] == a[2] && a[0] != 0
      @board.status = 'winner'
    elsif a[0] == a[3] && a[3] == a[6] && a[0] != 0
      @board.status = 'winner'
    elsif a[0] == a[4] && a[4] == a[8] && a[0] != 0
      @board.status = 'winner'
    elsif a[3] == a[4] && a[4] == a[5] && a[3] != 0
      @board.status = 'winner'
    elsif a[6] == a[7] && a[8] == a[7] && a[6] != 0
      @board.status = 'winner'
    elsif a[6] == a[4] && a[4] == a[]2 && a[2] != 0
      @board.status = 'winner'
    elsif a[1] == a[4] && a[1] == a[7] && a[1] != 0
      @board.status = 'winner'
    elsif a[2] == a[5] && a[5] == a[8] && a[8] != 0
      @board.status = 'winner'
    elsif a[0] != 0 && a[1] != 0 && a[2] != 0 && a[3] != 0 && a[4] != 0 && a[5] != 0 && a[6] != 0 && a[7] != 0 && a[8] != 0 
      @board.status='draw'
    end
  end

end
