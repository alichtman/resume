# Use TeX Live image with full LaTeX distribution
FROM texlive/texlive:latest

# Set working directory
WORKDIR /resume

# Install fontconfig for font cache management
RUN apt-get update && apt-get install -y fontconfig && rm -rf /var/lib/apt/lists/*

# Default command will be overridden by docker-compose
CMD ["xelatex", "-interaction=nonstopmode", "resume/resume.tex"]
