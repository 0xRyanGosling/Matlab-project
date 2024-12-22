function outimg = mid_point_filter(img, filterSize)
    % Check if filterSize is odd
    if mod(filterSize, 2) == 0
        error('filterSize must be an odd number.');
    end

    % Calculate the padding size
    padSize = floor(filterSize / 2);
    
    % Get the size of the input image
    [rows, cols] = size(img);

    % Manually pad the image by replicating border values
    paddedImg = zeros(rows + 2 * padSize, cols + 2 * padSize);

    % Fill the central part with the original image
    paddedImg(padSize+1:end-padSize, padSize+1:end-padSize) = img;

    % Replicate borders
    paddedImg(1:padSize, padSize+1:end-padSize) = img(1, :); % Top
    paddedImg(end-padSize+1:end, padSize+1:end-padSize) = img(end, :); % Bottom
    paddedImg(padSize+1:end-padSize, 1:padSize) = img(:, 1); % Left
    paddedImg(padSize+1:end-padSize, end-padSize+1:end) = img(:, end); % Right
    
    % Initialize the output image
    outimg = zeros(rows, cols);

    % Apply mid-point filter
    for i = 1:rows
        for j = 1:cols
            localRegion = paddedImg(i:i+filterSize-1, j:j+filterSize-1);
            outimg(i, j) = (min(localRegion(:)) + max(localRegion(:))) / 2;
        end
    end

    % Convert to uint8 and display the result
    outimg = uint8(outimg);
    imshow(outimg);
end
