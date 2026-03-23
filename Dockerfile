FROM python:3.9-slim

# Metadata labels
LABEL Name="devsecops-app"
LABEL Version="1.0"
LABEL Maintainer="anjibabu"

# Install curl for healthcheck
RUN apt-get update && apt-get install -y curl

# Create non-root user
RUN useradd -m appuser

WORKDIR /app

# Copy app
COPY app/ /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 6000

# Switch user
USER appuser

# Healthcheck
HEALTHCHECK CMD curl --fail http://localhost:6000/ || exit 1

# Start app
CMD ["python", "app.py"]