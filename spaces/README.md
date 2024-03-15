# Tanzu provided Profiles and Traits

This dir organises all Tanzu provided Profiles and Traits YAMLs for [Tanzu Application Engine][tanzu-application-engine].

The tanzu CLI space plugin or Tanzu Hub Space UI can be used to apply the YAML and create these Profiles and Traits per Project in Tanzu Hub.

Every Project in Tanzu Hub will eventually have all the Tanzu provided Profiles and Traits from this git repository pre-loaded for usage.

For general information about Packages, visit the [official website][carvel] and the [GitHub project page.][carvel-github]

[tanzu-application-engine]: https://tanzu.vmware.com/content/blog/introducing-vmware-tanzu-application-engine
[carvel]: https://carvel.dev
[carvel-github]: https://github.com/carvel-dev/carvel

## Structure for Tanzu provided YAMLs

```
.
├── README.md
├── profiles
│   └── spring.tanzu.vmware.com.yaml
└── traits
    ├── egress-trait.yaml
    ├── mtls-trait.yaml
    ├── public-ingress.yaml
    ├── selfsigned-certificate-trait.yaml
    ├── spring-cloud-gateway.yaml
    └── workload-installer.yaml
```

## Using Tanzu provided YAMLs for profiles and traits

Please refer to documentation for usage instructions.
