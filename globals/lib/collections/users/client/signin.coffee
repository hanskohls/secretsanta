
errfunction = (error)->
  if(error)
    console.log(JSON.stringify(error))
    if(error.error == 403)
      console.log("We coulde not find the account for " + email + ".")
      
Template.signin.events
  'submit #signin': (event, template) ->
    event.preventDefault()
    email = template.find("#input_email_in")
    console.log(EJSON.stringify(email))
    email = email.value
    password = template.find("#input_password_in").value
    Meteor.loginWithPassword(email, password, errfunction)
			