Meteor.startup ->
  Groups.allow
    insert: -> true
    update: -> false
    remove: -> false