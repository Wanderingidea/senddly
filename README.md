# senddly

### Purpose
Send the characters in a string delayed to a serial device

### Usage example
```
senddly.sh /dev/ttyACM0 ':l2wq'

2023/08/28 10:25:18 socat[33690] N PTY is /dev/pts/3
2023/08/28 10:25:18 socat[33690] N opening character device "/dev/ttyACM0" for reading and writing
2023/08/28 10:25:18 socat[33690] N starting data transfer loop with FDs [5,5] and [7,7]
sending :
sending l
sending 2
sending w
sending q
2023/08/28 10:25:20 socat[33690] N socat_signal(): handling signal 15
2023/08/28 10:25:20 socat[33690] W exiting on signal 15
2023/08/28 10:25:20 socat[33690] N socat_signal(): finishing signal 15
2023/08/28 10:25:20 socat[33690] N exit(143)
```
#### Dependency: socat
