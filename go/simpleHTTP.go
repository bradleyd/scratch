package main

import "net"
import "fmt"


func main() {
	ln, err := net.Listen("tcp", ":9090")
	if err != nil {
		// handle error
	}
	for {
		conn, err := ln.Accept()
		if err != nil {
			fmt.Println(err)
			continue
		}
		
		buffer := make([]byte, 2048);
        response := "foobar"
        clen := fmt.Sprintf("Content-Length: %d", len(response))
		headers := "HTTP/1.1 200 OK\r\n" +
               "Content-Type: text/plain\r\n" +
               clen + "\r\n"


        line := "\r\n"

		n, err := conn.Read(buffer)
		
		if err != nil {
			fmt.Printf("Cannot read %s\n", err)
		}

		res, err := conn.Write([]byte(headers))

		if err != nil {
			fmt.Printf("Cannot write %s\n", err)
		}

        _, err = conn.Write([]byte(line))

        if err != nil {
			fmt.Printf("Cannot write %s\n", err)
		}

        _, err = conn.Write([]byte(response))
        
        fmt.Printf("Read %d bytes\n", n);
        fmt.Printf("Wrote %d bytes\n", res);
		conn.Close();
	}
}


