package linkedlist

import "fmt"

type Node[T any] struct {
	Value T
	Next  *Node[T]
}

type LinkedList[T any] struct {
	Head   *Node[T]
	Equals func(a, b T) bool
}

func (l *LinkedList[T]) Append(value T) {
	newNode := &Node[T]{Value: value}
	if l.Head == nil {
		l.Head = newNode
		return
	}

	current := l.Head
	for current.Next != nil {
		current = current.Next
	}
	current.Next = newNode
}

func (l *LinkedList[T]) Traverse() {
	current := l.Head
	for current != nil {
		fmt.Println(current.Value)
		current = current.Next
	}
	fmt.Println("")
}

func (l *LinkedList[T]) Search(value T) *Node[T] {
	if l.Head == nil || l.Equals == nil {
		return nil
	}

	current := l.Head
	for current != nil {
		if l.Equals(current.Value, value) {
			return current
		}
		current = current.Next
	}
	return nil
}

func (l *LinkedList[T]) Delete(value T) {
	if l.Head == nil || l.Equals == nil {
		return
	}

	if l.Equals(l.Head.Value, value) {
		l.Head = l.Head.Next
		return
	}

	current := l.Head
	for current.Next != nil {
		if l.Equals(current.Next.Value, value) {
			current.Next = current.Next.Next
			return
		}
		current = current.Next
	}
}
