# Use TeX Live image with full LaTeX distribution
FROM texlive/texlive:latest

# Set working directory
WORKDIR /resume

# Install additional packages if needed
RUN tlmgr update --self && \
    tlmgr install fontawesome5 && \
    tlmgr install roboto

# Default command will be overridden by docker-compose
CMD ["xelatex", "-interaction=nonstopmode", "resume/resume.tex"]
