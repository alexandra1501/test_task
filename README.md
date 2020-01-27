Better interface for creating users and notifications is in progress

1. Create user
`User.create(`
`  email: "insert your email",`
`  first_name: "First Name",`
`  last_name: "Last Name",`
`  phone: "Your phone"`
`)`
2. Create notification
`Notification.create(`
`  notification_type: "SMS or EMAIL",`
`  template: "Text for notification",`
`  identifier: "idenifier for template"`
`)`
3. User.first.first_name + Notification.first.template

Or you can find a user by any attribute and a notification by identifier

`user = User.find_by(email: "test@test.test")`
`notification = Notification.find_by(identifier: "check_email")`
`user.first_name + " " + user.last_name + notification.template`
