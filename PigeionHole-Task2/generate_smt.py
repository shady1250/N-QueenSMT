def generate_smt_file(n, m, filename):
    with open(filename, 'w') as f:
        f.write("(set-logic QF_UF)\n")  # Set the logic to Uninterpreted Functions (QF_UF)
        
        # Declare variables P_i_j
        for i in range(n):
            for j in range(m):
                f.write(f"(declare-const P_{i}_{j} Bool)\n")
        
        # Constraint 1: Each pigeon must be in at least one hole
        for i in range(n):
            clause = " ".join([f"P_{i}_{j}" for j in range(m)])
            f.write(f"(assert (or {clause}))\n")
        
        # Constraint 2: No hole can have more than one pigeon
        for j in range(m):
            for i1 in range(n):
                for i2 in range(i1 + 1, n):
                    f.write(f"(assert (or (not P_{i1}_{j}) (not P_{i2}_{j})))\n")
        
        f.write("(check-sat)\n")
        f.write("(exit)\n")

# Generate SMT files for the required combinations
n_values = [5, 10, 20, 50, 80]
m_values = [5, 10, 20, 50, 80]

# Fixed n = 20, vary m
n_fixed = 20
for m in m_values:
    filename = f"pigeonhole_n{n_fixed}_m{m}.smt2"
    print(f"Generating SMT file: {filename}")
    generate_smt_file(n_fixed, m, filename)

# Fixed m = 20, vary n
m_fixed = 20
for n in n_values:
    filename = f"pigeonhole_n{n}_m{m_fixed}.smt2"
    print(f"Generating SMT file: {filename}")
    generate_smt_file(n, m_fixed, filename)
