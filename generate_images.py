import matplotlib.pyplot as plt
import numpy as np

def parse_smt_output(output_file, n):
    """Parse the SMT solver output to extract the board configuration."""
    board = [[False] * n for _ in range(n)]
    with open(output_file, "r") as f:
        lines = f.readlines()
        if not lines or lines[0].strip() != "sat":
            print(f"No solution found in {output_file}")
            return None
        for line in lines[1:]:
            if line.startswith("(("):
                var, value = line.strip()[2:-2].split()
                value = value == "true"
                _, i, j = var.split("_")
                board[int(i)][int(j)] = value
    return board

def generate_board_image(board, image_name):
    """Generate an image of the board configuration."""
    n = len(board)
    fig, ax = plt.subplots(figsize=(n, n))
    
    # Add grid lines
    ax.set_xticks(np.arange(-0.5, n, 1), minor=False)
    ax.set_yticks(np.arange(-0.5, n, 1), minor=False)
    ax.grid(color="black", linestyle="-", linewidth=1)
    ax.set_xticklabels([])
    ax.set_yticklabels([])
    
    # Debug: Print the board
    print(f"Board to be visualized:\n{np.array(board)}")
    
    # Draw the board with 'Q' and '.' symbols
    for i in range(n):
        for j in range(n):
            # Map board (0, 0) to the top-left
            cell_text = "Q" if board[i][j] else "."
            ax.text(j, i, cell_text, ha="center", va="center", fontsize=20, color="red" if cell_text == "Q" else "black")
    
    # Configure axis limits
    ax.set_xlim(-0.5, n - 0.5)
    ax.set_ylim(-0.5, n - 0.5)
    ax.invert_yaxis()  # Ensure top-left is (0,0)
    plt.savefig(image_name, bbox_inches="tight", dpi=150)
    plt.close()
    print(f"Image saved as {image_name}")


def main():
    # Define the output and image file names
    output_files = ["4.txt", "6.txt", "8.txt", "16.txt"]
    image_files = ["4_out.png", "6_out.png", "8_out.png", "16_out.png"]

    # Read each output file and generate the corresponding image
    for output_file, image_file in zip(output_files, image_files):
        n = int(output_file.split(".")[0])  # Get board size from the filename
        board = parse_smt_output(output_file, n)
        if board is not None:
            generate_board_image(board, image_file)

if __name__ == "__main__":
    main()

