package main

import "fmt"

type queue struct {
	items []int
}

func (q *queue) enqueue(value int) {
	q.items = append(q.items, value)
}

func (q *queue) dequeue() {
	if len(q.items) > 0 {
		q.items = q.items[1:len(q.items)]
	}
}

func (q queue) peek() {
	fmt.Println(q.items[len(q.items)-1])
}

func (q queue) size() int {
	return len(q.items)
}

func (q queue) print() {
	fmt.Println("print", q.items)
}

func main() {
	queue := queue{items: []int{}}
	queue.enqueue(42)
	queue.enqueue(8)
	queue.enqueue(99)
	queue.enqueue(31)
	queue.print()
	queue.peek()
	queue.dequeue()
	fmt.Println("size", queue.size())
	queue.print()
}
