package linkedlist

import "testing"

func TestLinkedList(t *testing.T) {
	list := LinkedList[int]{
		Equals: func(a, b int) bool { return a == b },
	}

	list.Append(42)
	list.Append(99)
	list.Append(101)

	t.Run("traverse", func(t *testing.T) {
		list.Traverse()
	})

	t.Run("search 42", func(t *testing.T) {
		found := list.Search(42)
		if found == nil || found.Value != 42 {
			t.Errorf("expected to find 42, got %v", found)
		}
	})

	t.Run("delete 99", func(t *testing.T) {
		list.Delete(99)
		found := list.Search(99)
		if found != nil {
			t.Errorf("expected 99 to be deleted, but found %v", found)
		}
	})
}
