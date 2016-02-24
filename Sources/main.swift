#if os(Linux)
import Glibc
#endif
import Inquiline
import Curassow


serve { request in
    
    if request.path == "/hard" {
        return Response(.Ok, contentType: "text/plain", body: "Hello Peter. Looking Erect.")
    }
    else if request.path == "/soft" {
        return Response(.Ok, contentType: "text/plain", body: "Hello Peter. Looking Blue.")
    }
    else {
        return Response(.Ok, contentType: "text/plain", body: "Hello Peter. <a href='/hard'>I'm Hard</a>. <a href='/soft'>I'm Soft</a>.")
    }
}
