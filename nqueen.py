def print_solution(solution):
    """Print the board in a formatted way."""
    for row in solution:
        print(" ".join("Q" if cell else "." for cell in row))
    print("\n" + "-" * (2 * len(solution) - 1))  # Separator between solutions

def is_safe(board, row, col, n):
    """Check if placing a queen at board[row][col] is safe."""
    # Check column
    for i in range(row):
        if board[i][col]:
            return False
    
    # Check upper-left diagonal
    for i, j in zip(range(row - 1, -1, -1), range(col - 1, -1, -1)):
        if board[i][j]:
            return False
    
    # Check upper-right diagonal
    for i, j in zip(range(row - 1, -1, -1), range(col + 1, n)):
        if board[i][j]:
            return False
    
    return True

def solve_n_queens(board, row, n, solutions):
    """Solve the n-Queens problem using backtracking."""
    if row == n:
        # A solution is found, save it
        solutions.append([row[:] for row in board])
        return
    
    for col in range(n):
        if is_safe(board, row, col, n):
            board[row][col] = True  # Place the queen
            solve_n_queens(board, row + 1, n, solutions)  # Recur for next row
            board[row][col] = False  # Backtrack

def find_all_n_queens_solutions(n):
    """Find all solutions for the n-Queens problem."""
    board = [[False] * n for _ in range(n)]
    solutions = []
    solve_n_queens(board, 0, n, solutions)
    return solutions

# Main function
def main():
    n = int(input("Enter the value of n: "))
    solutions = find_all_n_queens_solutions(n)
    print(f"Total solutions for {n}-Queens: {len(solutions)}")
    for i, solution in enumerate(solutions, start=1):
        print(f"Solution {i}:")
        print_solution(solution)

if __name__ == "__main__":
    main()
