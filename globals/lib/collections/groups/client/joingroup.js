Template.joingroup.onCreated(function () {

  var instance = this;
  instance.autorun(function () {
    console.log("Asking for groups.")
    var subscription = instance.subscribe('groups');
    if (subscription.ready()) {
      console.log("> Received groups.")
    } else {
      console.log("> Subscription is not ready yet.");
    }
  });

  instance.groups = function() { 
    return Groups.find({});
  };
  
  instance.matchGroup = function(name, password){
    return Groups.findOne({name: name, password: password});
  };

});

Template.joingroup.helpers({
  "groups": function(){
    console.log("helpers -> groups");
    return Template.instance().groups();
  }
})

Template.joingroup.events({
  "submit #formJoinGroup": function(event, template){
    event.preventDefault();
    var groupName = template.find('#groupSelect').value;
    var groupPassword = template.find('#inputGroupPassword').value;
    var group = Template.instance().matchGroup(groupName, groupPassword);
    console.log(EJSON.stringify(group));
  }
})