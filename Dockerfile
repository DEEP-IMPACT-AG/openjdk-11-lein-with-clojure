FROM clojure:openjdk-11-lein

RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.462.sh && \
  chmod +x linux-install-1.10.1.462.sh && \
  ./linux-install-1.10.1.462.sh && \
  rm -rf linux-install-1.10.1.462.sh
