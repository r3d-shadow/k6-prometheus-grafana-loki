# k6 Prometheus Grafana Loki

This Docker Compose configuration sets up a scalable environment for load testing using [k6](https://k6.io/) with Prometheus, Grafana, and Loki for monitoring and visualization.

## Overview

The stack includes the following services:

- **k6:** The load testing tool.
- **Prometheus:** A monitoring and alerting toolkit.
- **Grafana:** A platform for monitoring and observability.
- **Loki:** A horizontally scalable, multi-tenant log aggregation system.
- **Promtail:** An agent for ingesting logs into Loki.

## Prerequisites

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Setup

- Clone this repository:

   ```bash
   git clone https://github.com/redsh4d0w/k6-prometheus-grafana-loki.git
   cd k6-prometheus-grafana-loki
   ```

- Edit the .env file and update the configurations

## Dashboards
![Dashboard 1](https://raw.githubusercontent.com/redsh4d0w/k6-prometheus-grafana-loki/main/assets/dashboard1.png)

![Dashboard 2](https://raw.githubusercontent.com/redsh4d0w/k6-prometheus-grafana-loki/main/assets/dashboard2.png)

![Dashboard 3](https://raw.githubusercontent.com/redsh4d0w/k6-prometheus-grafana-loki/main/assets/dashboard3.png)