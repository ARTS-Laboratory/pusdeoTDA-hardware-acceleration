import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

num_points = 128

a = 5  # major axis
b = 3  # minor axis

theta = np.linspace(0, 2 * np.pi, num_points)
x = a * np.cos(theta)
y = b * np.sin(theta)

noise_scale = 0.5  # scale of the noise

x_noisy = x + np.random.normal(scale=noise_scale, size=x.shape)
y_noisy = y + np.random.normal(scale=noise_scale, size=y.shape)

# plt.figure(figsize=(6, 4))
# plt.scatter(x_noisy, y_noisy)
# plt.title('Noisy Point Cloud in the Shape of an Ellipse')
# plt.xlabel('X axis')
# plt.ylabel('Y axis')
# plt.grid(True)
# plt.axis('equal')
# plt.show()

df = pd.DataFrame({
    'x': x_noisy,
    'y': y_noisy
})

csv_file_path = 'ellipse.csv'  

# Output the point cloud to a CSV file
df.to_csv(csv_file_path, index=False)

# The 'csv_file_path' variable will contain the path to the saved CSV file
print(f"Point cloud saved to {csv_file_path}")


