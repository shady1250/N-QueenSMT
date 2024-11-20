import subprocess

def run_smt_file(smt_file, output_file):
    """Run the SMT file using the Z3 executable and save the output."""
    try:
        with open(output_file, "w") as out:
            subprocess.run(["./z3", smt_file], stdout=out, check=True)
        print(f"Output stored in {output_file}")
    except Exception as e:
        print(f"Error running {smt_file}: {e}")

def main():
    # Define the SMT and output file names
    smt_files = ["4.smt", "6.smt", "8.smt", "16.smt"]
    output_files = ["4.txt", "6.txt", "8.txt", "16.txt"]

    # Run each SMT file and save the output
    for smt_file, output_file in zip(smt_files, output_files):
        run_smt_file(smt_file, output_file)

if __name__ == "__main__":
    main()

