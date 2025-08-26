use std::collections::LinkedList;

#[derive(Clone)]
struct Dict {
    key: String,
    value: i32,
}

struct HashTable {
    list: Vec<LinkedList<Dict>>,
}

impl HashTable {
    fn new() -> Self {
        let mut list = Vec::with_capacity(10);
        for _ in 0..10 {
            list.push(LinkedList::new());
        }
        HashTable { list }
    }

    fn hash(key: &str) -> usize {
        let mut h: usize = 0;
        for b in key.bytes() {
            h = h.wrapping_mul(31).wrapping_add(b as usize);
        }
        h % 10
    }

    fn insert(&mut self, key: &str, value: i32) {
        let index = Self::hash(key);
        let item = &mut self.list[index];

        for l in item.iter_mut() {
            if l.key == key {
                l.value = value;
                return;
            }
        }

        item.push_back(Dict {
            key: key.to_string(),
            value,
        });
    }

    fn get(&self, key: &str) -> Option<i32> {
        let index = Self::hash(key);
        let item = &self.list[index];

        for l in item {
            if l.key == key {
                return Some(l.value);
            }
        }
        None
    }
}

fn main() {
    let mut hashtable = HashTable::new();
    hashtable.insert("ten", 10);
    hashtable.insert("hundred", 100);
    hashtable.insert("thousand", 1000);
    match hashtable.get("hundred") {
        Some(value) => println!("associated value with 'hundred': {}", value),
        None => println!("'hundred' not found!"),
    }
    match hashtable.get("thousand") {
        Some(value) => println!("associated value with 'thousand': {}", value),
        None => println!("'thousand' not found!"),
    }
}
