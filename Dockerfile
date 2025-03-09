FROM tjferrara/argos3

RUN apt update -y && \
    apt install -y --no-install-recommends xdotool && \
    rm -rf /var/lib/apt/lists/*

COPY argos3-autoreload /usr/local/bin/argos3-autoreload
