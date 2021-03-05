```rust
fn main() {
    // Statements here are executed when the compiled binary is called

    // Print text to the console
    println!("Hello World!");
}
```

```sh
❯ ls -alh
total 3.2M
drwxr-xr-x 2 matthew matthew 4.0K Mar  5 12:30 .
drwxr-xr-x 6 matthew matthew 4.0K Mar  5 12:30 ..
-rwxr-xr-x 1 matthew matthew 3.2M Mar  5 12:30 hello
-rw-r--r-- 1 matthew matthew  150 Mar  5 12:30 hello.rs
```

```go
package main

import "fmt"

func main () {
    fmt.Println("Hello World!")
}
```
```
❯ ls -alh
total 1.4M
drwxr-xr-x 2 matthew matthew 4.0K Mar  5 12:10 .
drwxr-xr-x 4 matthew matthew 4.0K Mar  5 12:09 ..
-rw-r--r-- 1 matthew matthew   22 Mar  5 12:10 go.mod
-rwxr-xr-x 1 matthew matthew 1.3M Mar  5 12:10 hello
-rw-r--r-- 1 matthew matthew   74 Mar  5 12:10 hello.go
```
```pascal
{$mode objfpc}{$H+}{$J-} // Just use this line in all modern sources

program Hello; // Must match filename
begin
  WriteLn('Hello world!');
end.
```
```sh
 ls -alh
total 204K
drwxr-xr-x 2 matthew matthew 4.0K Mar  5 12:09 .
drwxr-xr-x 4 matthew matthew 4.0K Mar  5 12:09 ..
-rwxr-xr-x 1 matthew matthew 187K Mar  5 12:09 hello
-rw-r--r-- 1 matthew matthew  146 Mar  5 12:08 hello.lpr
-rw-r--r-- 1 matthew matthew 3.9K Mar  5 12:09 hello.o
```

```c++
#include <iostream>

int main () {
    std::cout<<"Hello World"<<std::endl;
    return 0;
}
```
```
❯ ls -alh
total 36K
drwxr-xr-x 2 matthew matthew 4.0K Mar  5 12:23 .
drwxr-xr-x 5 matthew matthew 4.0K Mar  5 12:22 ..
-rwxr-xr-x 1 matthew matthew  23K Mar  5 12:23 hello
-rw-r--r-- 1 matthew matthew   92 Mar  5 12:22 hello.cpp
```

C++: 23K
Pascal: 187K
Go: 1.3M
Rust: 3.2M
