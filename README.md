Build a GCP VM Instance by running the below:

As a prerequisite google gcloud credentials must be set up so that communication between local and GCP is available.    

### init
```terraform init```
### plan
```terraform plan```
### apply the changes
```terraform apply```

----

## Debugging
```TF_LOG=DEBUG terraform apply```

### Create an execution graph and write it to a pdf 
```terraform graph -draw-cycles | dot -Tpdf > graph.pdf```

