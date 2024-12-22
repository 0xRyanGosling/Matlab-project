# Image Processing GUI Tool

This project is a graphical user interface (GUI) tool for image processing, developed using MATLAB. It provides an intuitive interface to perform various image processing tasks, including basic operations, advanced filtering, and frequency domain transformations.

## Features

### Basic Operations
- **Upload:** Load an image into the application.
- **Reset:** Clear the current operations and start fresh.
- **Download:** Save the processed image to your local system.

### Image Transformations
- **Convert to Grayscale:** Transform the image from RGB to grayscale.
- **Convert to Binary:** Convert the image to a binary format.
- **Negative Image:** Generate the negative of the image.

### Histogram Operations
- **Histogram Display:** Visualize the image's histogram.
- **Contrast Stretching:** Enhance the contrast of the image.
- **Histogram Equalization:** Improve the image's dynamic range.

### Advanced Options
#### Sharpening
- Apply filters such as Laplacian, Simplified, Unsharp, and High Boost.
- Perform sharpening along specific directions: Horizontal, Vertical, or Diagonal.

#### Edge Detection
- Detect edges using the Sobel operator in various directions.

#### Blurring
- Apply linear and non-linear blurring filters.

#### Frequency Domain Filtering
- **Low-Frequency Filtering:** Fourier Transform, Inverse Fourier, Ideal Low Pass, Gaussian Low Pass, Butterworth Low Pass.
- **High-Frequency Filtering:** Ideal High Pass, Gaussian High Pass, Butterworth High Pass.

#### Brightness Adjustment
- Adjust brightness using operations like Inverse Log, Log, Gamma Correction, and Basic Arithmetic (Sum, Division, Product, Subtract).

#### Noise Operations
- Add noise to images, including Gaussian Noise, Salt & Pepper Noise, and Uniform Noise.
- Remove noise using methods like Max, Min, Mean, Median, and Midpoint filtering.

## How to Use
1. **Upload an Image:** Click the "Upload" button to load an image from your device.
2. **Perform Operations:** Use the available tools to process your image (e.g., apply filters, adjust brightness, or remove noise).
3. **Preview Changes:** The GUI displays the original and processed images side-by-side.
4. **Save the Image:** Click "Download" to save the processed image.

## Requirements
- MATLAB (with GUI Development Environment enabled)
- Image Processing Toolbox

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/0xRyanGosling/Matlab-project
   ```
2. Open MATLAB and navigate to the project directory.
3. Open the GUI file (`Project.fig` or equivalent) in MATLAB's GUIDE or App Designer.
4. Run the project.

## Screenshots
![GUI Screenshot](image.png)

## Author
Developed by Abdulrhman Amr. For inquiries, contact:(mailto:abdulrhmanamro7180@gmail.com) or +201115591046.
