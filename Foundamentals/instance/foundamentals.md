

### If statement in Terraform

```machine_type = var.env == "prod" ? var.machine_type : var.machine_type_dev```
This means if env = prod then use machine_type variable else use machine_type dev