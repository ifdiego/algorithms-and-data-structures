package main

import "fmt"

type stack struct {
	items []int
}

func (s *stack) push(value int) {
	s.items = append(s.items, value)
}

func (s *stack) pop() {
	if len(s.items) > 0 {
		s.items = s.items[:len(s.items)-1]
	}
}

func (s stack) peek() {
	if len(s.items) > 0 {
		fmt.Println("peek:", s.items[len(s.items)-1])
	}
}

func (s stack) size() int {
	return len(s.items)
}

func (s stack) print() {
	fmt.Println(s.items)
}

func main() {
	stack := stack{items: []int{}}
	stack.push(42)
	stack.push(8)
	stack.push(99)
	stack.push(31)
	stack.print()
	stack.peek()
	stack.pop()
	stack.pop()
	fmt.Println("size:", stack.size())
	stack.print()
}
