# TutoriaLinux Digitalocean Terraform mini-course extravaganza!
A quick terraform tutorial for setting up load balanced web servers in digitalocean.

This repository goes along with the [free YouTube terraform course](https://www.youtube.com/watch?v=1JAx2npuprk&list=PLtK75qxsQaMIHQOaDd0Zl_jOuu1m3vcWO)

It contains the terraform code that you can use to follow along and set up a haproxy-load-balanced group of webservers.

Have fun!


## Quickstart:

1. Clone this repo:

`git clone https://github.com/groovemonkey/digitalocean-terraform.git`

1. Set up DigitalOcean credentials:

- [DigitalOcean Signup Link](https://www.digitalocean.com/?refcode=0380a1db56a6) (if you use this link to sign up for DO, we both get some DO credits)
- [DigitalOcean SSH Key/API Token Setup video](https://www.youtube.com/watch?v=hAW6aXRHWdw&list=PLtK75qxsQaMIHQOaDd0Zl_jOuu1m3vcWO&index=2)

1. Put those credentials into the `variables.tf` file.

1. Initialize and run terraform:
```
terraform init
terraform plan
```

1. If you're ready to spend some money (or DO credits):

`terraform apply`
