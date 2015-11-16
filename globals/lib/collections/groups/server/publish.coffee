Meteor.publish "groups_pub", ->
  Groups.find({})