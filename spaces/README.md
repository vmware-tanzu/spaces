# OOTB Profiles and Traits

This dir organises all out of the box (OOTB) Profile and Trait YAMLs for [Tanzu Application Engine][tanzu-application-engine].

The tanzu CLI space plugin or Tanzu Hub Space UI can be used to apply the YAML and create these Profiles and Traits per Project in Tanzu Hub.

Every Project in Tanzu Hub will eventually have all the OOTB Profiles and Traits from this git repository pre-loaded for usage.

For general information about Packages, visit the [official website][carvel] and the [GitHub project page.][carvel-github]

[tanzu-application-engine]: https://tanzu.vmware.com/content/blog/introducing-vmware-tanzu-application-engine
[carvel]: https://carvel.dev
[carvel-github]: https://github.com/carvel-dev/carvel

## Structure for OOTB YAMLs

```
├── README.md
├── capabilities
├── profiles
│   ├── dev-backing-services.yaml
│   ├── public-ingress.yaml
│   └── spring.yaml
├── space-templates
└── traits
    ├── public-ingress.yaml
    ├── server-workload.yaml
    └── spring-cloud-gateway.yaml
```

## Using OOTB YAMLs for profiles and traits

Please refer to documentation for usage instructions.
