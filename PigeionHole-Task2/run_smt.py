import time
from subprocess import Popen, PIPE, TimeoutExpired  

def solve_smt_file(filename, timeout=150):  # Timeout set to 30 seconds
    start_time = time.time()
    
    try:
        # Start the Z3 solver process
        process = Popen(['z3', filename], stdout=PIPE, stderr=PIPE)
        stdout, stderr = process.communicate(timeout=timeout)  # Set timeout

        end_time = time.time()

        if process.returncode != 0:
            print(f"Error solving {filename}: {stderr.decode()}")
            return None

        result = stdout.decode().strip()
        time_taken = end_time - start_time
        return result, time_taken

    except TimeoutExpired:
        print(f"Timeout expired while solving {filename}.")
        process.kill()  # Kill the process if it exceeds the timeout
        return "timeout", timeout

# List of SMT files to test
n_values = [5, 10, 20, 50, 80]
m_values = [5, 10, 20, 50, 80]
n_fixed = 20
m_fixed = 20

smt_files = [
    f"pigeonhole_n{n_fixed}_m{m}.smt2" for m in m_values
] + [
    f"pigeonhole_n{n}_m{m_fixed}.smt2" for n in n_values
]

# Output file to store results
output_file = "performance_results.csv"

# Solve SMT files and record results
with open(output_file, "w") as f:
    f.write("Filename,Result,TimeTaken\n")
    for i, filename in enumerate(smt_files):
        print(f"Solving ({i+1}/{len(smt_files)}): {filename}")
        result, time_taken = solve_smt_file(filename)
        if result is not None:
            f.write(f"{filename},{result},{time_taken:.2f}\n")
            print(f"Result: {result}, Time Taken: {time_taken:.2f}s")
        else:
            f.write(f"{filename},Error,0.00\n")
            print(f"Error processing {filename}")
