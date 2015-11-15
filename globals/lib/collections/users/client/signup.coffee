errfunction = (error)->
  if(error)
    console.log(JSON.stringify(error))
    if(error.error == 403)
      console.log("We coulde not find the account for " + email + ".")
      


Template.signup.events
  'submit #signup': (event, template) ->
    event.preventDefault()
    name = template.find("#input_name").value
    email = template.find("#input_email").value
    password = template.find("#input_password").value
    
    user = new User
    user.setEmail(email)
    user.setUsername(name)
    user.setPassword(password)
    data = user.getDetails();
    Accounts.createUser(data, errfunction)
