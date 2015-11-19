#fields: 
# name - String
# password - String
# join_until - String (date YYYY-MM-DD)
# ending - String (date YYYY-MM-DD)
@Groups = new Mongo.Collection "Groups"

Meteor.startup ->
  Groups.insert [
    (name: "test")
    (name: "test2")
  ]


