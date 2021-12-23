FROM ubuntu:20.04 

LABEL maintainer="dwilicious"

# environment settings
ENV HOME="/code"
ENV TZ Asia/Kolkata

RUN \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    echo "**** Update repos and install some programs ****" && \
    apt update && \
    apt install -y \
    curl \
    wget \
    git \
    nano \
    python3-pip && \
    echo "**** install code-server ****" && \
    # CODE_LATEST=$(curl -s https://api.github.com/repos/cdr/code-server/releases/latest | grep "browser_download_url.*amd64.deb" | cut -d '"' -f 4) && \
    wget https://github.com/coder/code-server/releases/download/v3.12.0/code-server_3.12.0_amd64.deb && \
    dpkg -i *.deb && \
    echo "**** installing Python Modules ****" && \
    pip3 --no-cache install -U ipykernel pylint pytest numpy pandas matplotlib requests flask dbt-clickhouse && \
    echo "**** installing vscode extension ****" && \
    code-server --install-extension dbaeumer.vscode-eslint && \
    code-server --install-extension esbenp.prettier-vscode && \
    code-server --install-extension github.vscode-pull-request-github && \
    code-server --install-extension ms-python.python && \
    code-server --install-extension ritwickdey.liveserver && \
    echo "**** clean up ****" && \
    apt purge --auto-remove -y && \
    apt autoclean -y && \
    rm -rf \
    ${HOME}/.local/share/code-server/CachedExtensionVSIXs/* \
    /code/*.deb \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    echo "**** dbt project setup ****" && \
    dbt init /code/dbt_project/dbt_clickhouse

# expose port to local machine for code-server and live-server
EXPOSE 5500 8080

# run code server
ENTRYPOINT  code-server --bind-addr 0.0.0.0:8080 --auth password