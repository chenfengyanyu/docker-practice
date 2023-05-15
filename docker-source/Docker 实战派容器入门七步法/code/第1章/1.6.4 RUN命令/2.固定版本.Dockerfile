RUN apt-get update && apt-get install -y \
    package-bar \
    package-baz \
    package-foo=1.3.0 \
    && rm -rf /var/lib/apt/lists/*
