import matplotlib.pyplot as plt

# Input file containing results
input_file = "performance_results.csv"

# Parse results from the file
holes_m = []
holes_m_times = []
pigeons_n = []
pigeons_n_times = []

with open(input_file, "r") as f:
    lines = f.readlines()[1:]  # Skip header
    for line in lines:
        filename, result, time_taken = line.strip().split(",")
        time_taken = float(time_taken)
        
        if "n20_" in filename:  # Varying m
            m = int(filename.split("_m")[1].split(".")[0])
            holes_m.append(m)
            holes_m_times.append(time_taken)
        elif "m20" in filename:  # Varying n
            n = int(filename.split("_n")[1].split("_")[0])
            pigeons_n.append(n)
            pigeons_n_times.append(time_taken)

# Plot results for varying m
plt.figure(figsize=(10, 5))
plt.plot(holes_m, holes_m_times, marker='o', label="n = 20")
plt.xlabel("Number of Holes (m)")
plt.ylabel("Time Taken (s)")
plt.title("Time Taken vs. Number of Holes (m)")
plt.legend()
plt.grid()
plt.savefig("plot_m_vs_time.png")  # Save the plot
plt.show()

# Plot results for varying n
plt.figure(figsize=(10, 5))
plt.plot(pigeons_n, pigeons_n_times, marker='o', label="m = 20")
plt.xlabel("Number of Pigeons (n)")
plt.ylabel("Time Taken (s)")
plt.title("Time Taken vs. Number of Pigeons (n)")
plt.legend()
plt.grid()
plt.savefig("plot_n_vs_time.png")  # Save the plot
plt.show()
