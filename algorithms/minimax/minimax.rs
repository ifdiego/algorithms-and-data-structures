#[derive(Clone, Copy, PartialEq)]
enum Player {
    X,
    O,
    Empty,
}

#[derive(Clone)]
struct Game {
    board: [Player; 9],
}

impl Game {
    fn init() -> Self {
        Game {
            board: [Player::Empty; 9],
        }
    }

    fn is_winner(&self, player: Player) -> bool {
        let winning_positions = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6],
        ];
        winning_positions
            .iter()
            .any(|&line| line.iter().all(|&pos| self.board[pos] == player))
    }

    fn is_full(&self) -> bool {
        !self.board.contains(&Player::Empty)
    }

    fn evaluate(&self) -> i32 {
        if self.is_winner(Player::X) {
            1
        } else if self.is_winner(Player::O) {
            -1
        } else {
            0
        }
    }

    fn minimax(&self, depth: usize, maximing_player: bool) -> i32 {
        if self.is_winner(Player::X) || self.is_winner(Player::O) || self.is_full() {
            return self.evaluate();
        }

        if maximing_player {
            let mut max_eval = i32::MIN;
            for i in 0..9 {
                if self.board[i] == Player::Empty {
                    let mut new_game = self.clone();
                    new_game.board[i] = Player::X;
                    let eval = new_game.minimax(depth + 1, false);
                    max_eval = max_eval.max(eval);
                }
            }
            max_eval
        } else {
            let mut min_eval = i32::MIN;
            for i in 0..9 {
                if self.board[i] == Player::Empty {
                    let mut new_game = self.clone();
                    new_game.board[i] = Player::O;
                    let eval = new_game.minimax(depth + 1, true);
                    min_eval = min_eval.min(eval);
                }
            }
            min_eval
        }
    }

    fn best_move(&self) -> usize {
        let mut best_score = i32::MIN;
        let mut move_index = 0;

        for i in 0..9 {
            if self.board[i] == Player::Empty {
                let mut new_game = self.clone();
                new_game.board[i] = Player::X;
                let score = new_game.minimax(0, false);
                if score > best_score {
                    best_score = score;
                    move_index = i;
                }
            }
        }
        move_index
    }
}

fn main() {
    let game = Game::init();
    let best_move = game.best_move();
    println!("the best move to 'X' it's in the position: {}", best_move);
}
