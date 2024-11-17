FROM python:3.11-slim

# Set environment variables to prevent Python from writing pyc files and avoid buffering
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install TeX Live (for LaTeX) and poppler-utils (for PDF to PNG conversion)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    texlive \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    latexmk \
    ghostscript \
    biber \
    poppler-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /workspace

# Copy the Python script (and any necessary files) into the container
COPY . /workspace

# Command to run your Python script
CMD ["python", "script.py"]
