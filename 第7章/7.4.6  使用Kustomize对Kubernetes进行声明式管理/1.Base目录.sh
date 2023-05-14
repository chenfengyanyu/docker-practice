Base
├── csr-app-v1
│   ├── deployment.yaml
│   ├── kustomization.yaml
│   ├── kustomizeconfig
│   │   ├── deployment-prefix-setter.yaml
│   │   └── version-label-transformer.yaml
│   └── service.yaml
└── ssr-app-v1
    ├── filebeat.yml
    ├── kustomization.yaml
    ├── kustomizeconfig
    │   ├── deployment-prefix-setter.yaml
    │   └── version-label-transformer.yaml
    ├── nginx
    │   ├── deployment.yaml
    │   ├── filebeat-inputs-nginx.yml
    │   └── service.yaml
    └── nodejs
        ├── deployment.yaml
        ├── filebeat-inputs-nodejs.yml
        └── service.yaml
