import 'dart:io';

class TicTacToe {
  List<List<String>> board;
  String currentPlayer;

  TicTacToe()
      : board = List.generate(3, (_) => List.filled(3, ' ')),
        currentPlayer = 'O';

  void displayBoard() {
    for (var row in board) {
      print(row.map((cell) => cell.isEmpty ? ' ' : cell).join(' | '));
      print('---------');
    }
  }

  bool Move(int row, int col) {
    if (row < 0 || row >= 3 || col < 0 || col >= 3 || board[row][col] != ' ') {
      return false;
    }
    board[row][col] = currentPlayer;
    return true;
  }

  bool checkWin() {
    // Check rows and columns
    for (int i = 0; i < 3; i++) {
      if ((board[i][0] == currentPlayer &&
              board[i][1] == currentPlayer &&
              board[i][2] == currentPlayer) ||
          (board[0][i] == currentPlayer &&
              board[1][i] == currentPlayer &&
              board[2][i] == currentPlayer)) {
        return true;
      }
    }
    // Check diagonals
    if ((board[0][0] == currentPlayer &&
            board[1][1] == currentPlayer &&
            board[2][2] == currentPlayer) ||
        (board[0][2] == currentPlayer &&
            board[1][1] == currentPlayer &&
            board[2][0] == currentPlayer)) {
      return true;
    }
    return false;
  }

  bool isDraw() {
    for (var row in board) {
      if (row.contains(' ')) {
        return false;
      }
    }
    return true;
  }

  void switchPlayer() {
    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
  }

  void play() {
    while (true) {
      displayBoard();
      print('Player $currentPlayer, Enter your move (row and column): ');
      int row = int.parse(stdin.readLineSync()!);
      int col = int.parse(stdin.readLineSync()!);

      if (!Move(row, col)) {
        print('Invalid move. Try again.');
        continue;
      }

      if (checkWin()) {
        displayBoard();
        print('Player $currentPlayer wins!');
        break;
      }

      if (isDraw()) {
        displayBoard();
        print('The game is a draw!');
        break;
      }

      switchPlayer();
    }
  }
}

void main() {
  TicTacToe game = TicTacToe();
  game.play();
}
