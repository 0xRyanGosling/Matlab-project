function [filtered_img] = ButterworthHighPassFilter(img, D0, n)
    % ButterworthHighPassFilter - Applies a Butterworth High Pass Filter to an image.
    % Inputs:
    %   img - The grayscale image (matrix).
    %   D0  - The cutoff frequency.
    %   n   - The order of the Butterworth filter.
    %
    % Output:
    %   filtered_img - The filtered image (after inverse FFT).

    % Get the size of the image
    [M, N] = size(img);

    % Perform Fourier Transform
    img_fft = fft2(double(img));
    img_fft_shifted = fftshift(img_fft); % Shift zero frequency to the center

    % Create the Butterworth High Pass Filter (BHPF)
    [U, V] = meshgrid(-floor(N/2):floor(N/2)-1, -floor(M/2):floor(M/2)-1);
    D = sqrt(U.^2 + V.^2);  % Distance matrix

    % Butterworth High Pass Filter formula
    H = 1 ./ (1 + (D0 ./ D).^2 * n);  % Butterworth High Pass Filter

    % Apply the Butterworth High Pass Filter in the frequency domain
    img_fft_filtered = img_fft_shifted .* H;

    % Perform Inverse Fourier Transform to get the filtered image
    img_ifft = ifft2(ifftshift(img_fft_filtered)); % Inverse FFT and shift back
    filtered_img = real(img_ifft); % Take the real part for visualization
end
