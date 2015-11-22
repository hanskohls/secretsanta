Groups = new Mongo.Collection("Groups");
Groups.attachSchema(
  new SimpleSchema({
    name: {
      type: String,
      label: "Group name:",
      min: 5, 
      max: 20
    },
    password: {
      type: String,
      label: "A Password to share with your invites",
      min: 6,
      max: 20
    },
    joinUntil:{
      type:Date,
      label: "The last Date a new members can join",
    },
    ending:{
      type:Date,
      label: "The date when you plan to exchange presents",
      optional: true
    },
  
}));




