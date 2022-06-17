# README
		board controller

Request	index
	Route: /board
	Method: get
	Params:
	Header:
	
Response
	Success:
	
	{status: 200, boards: @boards}
	
	Error:
	
	{status: 400}
	
Request 	show
	Route:/board/:id
	Method: get
	Params: id
	Header:
	
Response
	Success:
	
	{status: 200, board: @board}
	
	Error:
	
	{status: 400, message: "board not found"}
	
Request	create
	Route:/board
	Method: post
	Params: 
	Header:
	
Response
	Success:
	
	{status: 200, board: @board}
	
	Error:
	
	{status: 400, message: @board.error.details}

Request	move
	Route:/play
	Method: post
	Params: position, id
	Header:
	
Response
	Success:
	
	{status: 200, board: @board}
	
	Error:
	
	{status: 400}

		User controller
Request	index
	Route:/user
	Method: get
	Params:
	Header:
	
Response
	Success:
	
	{status: 200, users: @users}
	
	Error:
	
	{status: 400}

Request	show
	Route:/user/:id
	Method: get
	Params: id
	Header:
	
Response 
	Success:
	
	{status: 200, user: @user}
	
	Error:
	
	{status: 400, message: "user not found"}
	
Request	create
	Route:/user
	Method: post
	Params: 
	Header:
	
Response 
	Success:
	
	{status: 200, user: @user}
	
	Error:
	
	{status: 400, message: "user not found"}
	
Request	show
	Route:/board/:id
	Method: get
	Params: id
	Header:
	
Response 
	Success:
	
	{status: 200, board: @board}
	
	Error:
	
	{status: 400, message: "user not found"}

Request	create
	Route:/user
	Method: post
	Params: 
	Header:
	
Response 
	Success:
	
	{status: 200, user: @user}
	
	Error:
	
	{status: 400, message: @user.error.details}

Request	login
	Route:/board/:id
	Method: get
	Params: username, password
	Header:
	
Response 
	Success:
	
	{status: 200}
	
	Error:
	
	{status: 400, message: "user not found"}
	
	
	
