import java.util.Scanner;

public class tictactoe4 {
    static char[][] board = new char[4][4];
    static Scanner sc = new Scanner(System.in);
    static char player = 'X';

    public static void main(String[] args) {
        initializeBoard();
        while (true) {
            System.out.println("Current board: ");
            printBoard();
            System.out.println("Player " + player + ", enter your move (row[1-4] column[1-4]): ");
            int row = sc.nextInt() - 1;
            int col = sc.nextInt() - 1;
            if (board[row][col] == '-') {
                board[row][col] = player;
                if (checkWin(row, col)) {
                    System.out.println("Player " + player + " wins!");
                    break;
                }
                player = (player == 'X') ? 'O' : 'X';
            } else {
                System.out.println("This cell is already occupied. Try again.");
            }
        }
    }

    static boolean checkWin(int row, int col) {
        // Check row
        for (int i = 0; i < 4; i++) {
            if (board[row][i] != player)
                break;
            if (i == 3)
                return true;
        }

        // Check column
        for (int i = 0; i < 4; i++) {
            if (board[i][col] != player)
                break;
            if (i == 3)
                return true;
        }

        // Check diagonal
        if (row == col) {
            for (int i = 0; i < 4; i++) {
                if (board[i][i] != player)
                    break;
                if (i == 3)
                    return true;
            }
        }

        // Check reverse diagonal
        if (row + col == 3) {
            for (int i = 0; i < 4; i++) {
                if (board[i][3 - i] != player)
                    break;
                if (i == 3)
                    return true;
            }
        }

        return false;
    }

    static void initializeBoard() {
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                board[i][j] = '-';
            }
        }
    }

    static void printBoard() {
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                System.out.print(board[i][j] + " | ");
            }
            System.out.println();
        }
    }
}