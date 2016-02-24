
class UserManager {
    var users: [User]
    
    init () {
        users = []
    }
    
    func addUser(firstName: String, lastName: String) {
        users.append(User(firstName: firstName, lastName: lastName))
    }
    
    func allUsers() -> String {
        let userNames = users.map { (user) -> String in
            return user.firstName + user.lastName
        }
        
        let displayString = userNames.reduce("", combine: { (current: String, userName: String) -> String in
            return current + "\n" + userName
        })
        
        return displayString
    }
}