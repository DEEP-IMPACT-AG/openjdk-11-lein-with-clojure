FROM clojure:openjdk-11-lein

RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.462.sh && \
  chmod +x linux-install-1.10.1.462.sh && \
  ./linux-install-1.10.1.462.sh && \
  rm -rf linux-install-1.10.1.462.sh

RUN useradd --create-home -m bmo -G sudo && \
  echo "bmo:bmo" | chpasswd && \
  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
  rm -rf /root/.m2 && \
  apt-get update && \
  apt-get install -y --no-install-recommends sudo jq && \
  rm -rf /var/lib/apt/lists/* \
  chmod -R 777 /root

USER bmo
WORKDIR /root
