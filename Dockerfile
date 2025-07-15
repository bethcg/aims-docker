# Advanced AI/ML Tools Dockerfile

# Use official NVIDIA CUDA base image for GPU acceleration
FROM nvidia/cuda:12.9.1-cudnn-devel-ubuntu20.04

# Set working directory
WORKDIR /workspace

# Install core utilities
RUN pip install --no-cache-dir

# Expose Jupyter Notebook port
EXPOSE 8888

# Default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
