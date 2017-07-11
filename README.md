# Demo setup

- `eval "$(triton env us-sw-1)"`
- `brew install maven`
- `mvn package` (not `mvn clean install`)
- `cp ../../tomcat-hello-world-deb/target/helloworld_1.0_all.deb files/`
- `cfgt -i template.json5 | packer build -`
- `triton img get hello-world-app`
- edit template and enter image UUID
- added CNS tags for auto deploying within `joyent.zone`

## Demo video terraform usage

- `terraform init`
- `terraform graph | dot -Tpdf > out.pdf`
- `export TF_VAR_domain=example.com`
- `export TF_VAR_subdomain=demo`
- `terraform plan`
- `terraform apply`
