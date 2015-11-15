Template.signout.events
  'click #btnLogout': (event, template) ->
    event.preventDefault()
    Meteor.logout()