module "instance" {
    source = "../../instance/basic-instance"
    zone = "us-central1-b"   ## it will overide variable from /basic-instance/variable.tf file
}
