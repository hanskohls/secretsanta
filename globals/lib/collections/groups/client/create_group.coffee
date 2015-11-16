Template.create_group.helpers
  "default_join_until" : ->
    moment().add(7, 'days').format("YYYY-MM-DD")
  "default_ending" : ->
    year = moment().format('YYYY')
    moment(year+"-12-25").format("YYYY-MM-DD")

Template.create_group.events
  "submit #form_create_group": (event, template) ->
    event.preventDefault()
    group_name = template.find("#input_group_name").value
    group_password = template.find("#input_group_password").value
    join_until_date = template.find("#input_join_until").value
    ending_date = template.find("#input_ending").value
    document =
      name: group_name
      password: group_password
      join_until_date: join_until_date
      ending_date: ending_date
    Groups.insert(document)
    