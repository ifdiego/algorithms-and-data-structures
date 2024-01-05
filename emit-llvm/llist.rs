use std::collections::LinkedList;

fn main() {
    let mut list: LinkedList<i32> = LinkedList::new();
    list.push_front(42);
    list.push_front(100);

    for item in list {
        println!("- {}", item)
    }
}
