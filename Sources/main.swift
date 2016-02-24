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

// Handle GET requests to path /users/{username}
get("users", *) { (request, username: String) in
    return "Hello \(username)"
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
