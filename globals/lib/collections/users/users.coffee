@User = () ->
  this.email = ""
  this.password = ""
  this.username = ""

isValidPassword = (val) ->
  val.length >= 6 ? true : false 

trimInput = (val) ->
	 val.replace(/^\s*|\s*$/g, '')

User.prototype.setEmail = (email) ->
  this.email = trimInput(email)

User.prototype.setPassword = (password) ->
  this.password = password

User.prototype.setUsername = (username) ->
  this.username = username

User.prototype.getDetails = () ->
  data =
    nickname: this.username
    username: this.email
    password: this.password
    email: this.email
  return data