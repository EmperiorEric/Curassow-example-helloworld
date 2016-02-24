//#if os(Linux)
//import Glibc
//#endif
//import Inquiline
//import Curassow

import Frank

// Handle GET requests to path /
get { request in
    return "Hello World"
}

let userManager = UserManager()

// Handle GET requests to path /users/{username}
get("users", *) { (request, username: String) in
    userManager.addUser(username, lastName: "")
    
    let returnString = "Success!" + "\n\n\n" + userManager.allUsers()
    
    return returnString
}

get("users") { request in
    return userManager.allUsers()
}

get("users", "search") { request in
    return "Search: " + userManager.allUsers()
}


//
//serve { request in
//    
//    if request.path == "/hard" {
//        return Response(.Ok, contentType: "text/html", body: "Hello Peter. Looking Erect.")
//    }
//    else if request.path == "/soft" {
//        return Response(.Ok, contentType: "text/html", body: "Hello Peter. Looking Blue.")
//    }
//    else {
//        return Response(.Ok, contentType: "text/html", body: "Hello Peter. <a href='/hard'>I'm Hard</a>. <a href='/soft'>I'm Soft</a>.")
//    }
//}
