import java.util.Scanner;

public class tictactoe3 {

    static Scanner input = new Scanner(System.in);
    static char[][] board = { { ' ', ' ', ' ' }, { ' ', ' ', ' ' }, { ' ', ' ', ' ' } };
    static char turn = 'X';

    public static void main(String[] args) {
        while (!isGameOver()) {
            printBoard();
            getPlayerMove();
            switchTurn();
        }
        System.out.println("The game is over. " + turn + " wins!");
    }

    static void printBoard() {
        System.out.println("  0 1 2");
        for (int i = 0; i < 3; i++) {
            System.out.print(i + " ");
            for (int j = 0; j < 3; j++) {
                System.out.print(board[i][j] + "|");
            }
            System.out.println();
            System.out.println("  - - -");
        }
    }

    static void getPlayerMove() {
        System.out.print("Player " + turn + ", enter row and column (e.g. 1 2): ");
        int row = input.nextInt();
        int col = input.nextInt();
        while (board[row][col] != ' ') {
            System.out.println("Space already occupied. Try again.");
            System.out.print("Player " + turn + ", enter row and column (e.g. 1 2): ");
            row = input.nextInt();
            col = input.nextInt();
        }
        board[row][col] = turn;
    }

    static void switchTurn() {
        if (turn == 'X') {
            turn = 'O';
        } else {
            turn = 'X';
        }
    }

    static boolean isGameOver() {
        for (int i = 0; i < 3; i++) {
            if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != ' ') {
                return true;
            }
        }
        for (int j = 0; j < 3; j++) {
            if (board[0][j] == board[1][j] && board[1][j] == board[2][j] && board[0][j] != ' ') {
                return true;
            }
        }
        if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != ' ') {
            return true;
        }
        if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != ' ') {
            return true;
        }
        return false;
    }
}