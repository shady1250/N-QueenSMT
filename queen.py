def generate_smt_file(n):
    filename = f"{n}.smt"
    with open(filename, "w") as f:
        f.write("; SMT-LIB file for the " + str(n) + "-Queens problem\n")

        # Declare variables
        for i in range(n):
            for j in range(n):
                f.write(f"(declare-const q_{i}_{j} Bool)\n")

        # Row constraints: One queen per row
        for i in range(n):
            f.write(f"(assert (= (+ " + " ".join([f"(ite q_{i}_{j} 1 0)" for j in range(n)]) + ") 1))\n")

        # Column constraints: One queen per column
        for j in range(n):
            f.write(f"(assert (= (+ " + " ".join([f"(ite q_{i}_{j} 1 0)" for i in range(n)]) + ") 1))\n")

        # Diagonal constraints: No two queens on the same diagonal
        for i in range(n):
            for j in range(n):
                for k in range(1, n):
                    if i + k < n and j + k < n:
                        f.write(f"(assert (not (and q_{i}_{j} q_{i+k}_{j+k})))\n")
                    if i + k < n and j - k >= 0:
                        f.write(f"(assert (not (and q_{i}_{j} q_{i+k}_{j-k})))\n")

        # Check satisfiability and model
        f.write("(check-sat)\n")
        for i in range(n):
            for j in range(n):
                f.write(f"(get-value (q_{i}_{j}))\n")

    print(f"SMT file for n={n} generated: {filename}")

# Generate SMT files for n=4, 6, 8, 16
for n in [4, 6, 8, 16]:
    generate_smt_file(n)
