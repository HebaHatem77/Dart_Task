import 'dart:io';

List<String> board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '];
List<String> goal = ['012', '048', '036', '147', '246', '258', '345', '678'];
bool winner = false;
bool X_turn = true;
int count = 0;

void main() {
  draw_board();
  get_char();
}

void get_char() {
  print("choose the number position for ${X_turn == true ? 'X' : 'O'}");
  int position = int.parse(stdin.readLineSync()!);
  board[position - 1] = X_turn ? 'X' : 'O';
  X_turn = !X_turn;
  count++;

  if (count == 9) {
    winner = true;
    print("The board is filled");
  } else {
    draw_board();
  }

  check_winner('X');
  check_winner('O');

  if (winner == false) {
    get_char();
  }
}

void draw_board() {
  print(' ___ ___ ___');
  print('|   |   |   |');
  print('| ${board[0]} | ${board[1]} | ${board[2]} |');
  print('|___|___|___|');
  print('|   |   |   |');
  print('| ${board[3]} | ${board[4]} | ${board[5]} |');
  print('|___|___|___|');
  print('|   |   |   |');
  print('| ${board[6]} | ${board[7]} | ${board[8]} |');
  print('|___|___|___|');
}

bool check(String goal, String check) {
  List<int> num = goal.split('').map((e) {
    return int.parse(e);
  }).toList();
  bool achieve = false;
  for (final n in num) {
    if (board[n] == check) {
      achieve = true;
    } else {
      achieve = false;
      break;
    }
  }
  return achieve;
}

void check_winner(player) {
  for (final g in goal) {
    bool goal_achieve = check(g, player);
    if (goal_achieve == true) {
      print("${player} is the Winner ");
      winner = true;
      break;
    }
  }
}
