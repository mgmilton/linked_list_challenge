# Linked List Coding Challenge

## Linked List

Create a linked list that responds to the following methods. Assume that this list will only hold numbers.

```
.head
.append(num)
.count
.to_s
.prepend
.insert
.pop
.shift
```

Your linked list should be able to implement the following interaction pattern in a `pry` session.

```
> require "./lib/linked_list"
> list = LinkedList.new
=> <LinkedList head=nil #45678904567>
> list.head
=> nil
> list.append(5)
=> 5
> list
=> <LinkedList head=<Node data=5 next_node=nil #5678904567890> #45678904567>
> list.head.next_node
=> nil
> list.count
=> 1
> list.to_s
=> "5"
> list.append(4)
=> 4
> list.head.next_node
=> <Node data=4 next_node=nil #5678904567890>
> list.count
=> 2
> list.to_s
=> "54"
> list.prepend(3)
=> 3
> list.count
=> 3
> list.to_s
=> "354"
> list.insert(1, 8)
=> 8
> list.to_s
=> 3854
> list.pop
=> 4
> list.to_s
=> 385
> list.shift
=> 3
> list.to_s
=> 85
```

## Sorting

Implement a `sort` method on your linked list that uses [bubble sort](https://en.wikipedia.org/wiki/Bubble_sort).

## Stack

Create a new `Stack` class that implements the following methods using your linked list (i.e. do not use an array or hash to hold values added to your stack):

```
.push(number)
.pop
.peek
.is_empty?
```

Your stack should be able to implement the following interaction pattern in a `pry` session.

```
> s = Stack.new
=> <Stack ... #45678904567>
> s.is_empty?
=> true
> s.push(5)
=> 5
> s.is_empty?
=> false
> s.push(4)
=> 4
> s.push(8)
=> 8
> s.peek
=> 8
> s.pop
=> 8
> s.peek
=> 4
```

## Queue

Create a new `Queue` class that implements the following methods using your linked list (i.e. do not use an array or hash to hold values added to your queue):

```
.add(number)
.remove
.peek
.is_empty
```

Your queue should be able to implement the following interaction pattern in a `pry` session.

```
> q = Queue.new
=> <Queue ... #45678904567>
> q.is_empty?
=> true
> q.add(5)
=> 5
> q.is_empty?
=> false
> q.add(4)
=> 4
> q.add(8)
=> 8
> q.peek
=> 5
> q.remove
=> 5
> q.peek
=> 4
```

## File I/O

Add the following methods to your linked list.

```
.read(filename)
.write(filename)
#sort(input, output)
```

* `.read` reads the content of a file with numbers separated by newline characters and adds those numbers to a linked list.
* `.write` takes the values currently in your linked list and creates a new file containing all of the numbers in the linked list separated by newline characters.
* `#sort` reads the contents of a file, sorts those contents, and writes them to a new file.


Add CommentCollapse 
Message Input

Message #1711-backend
