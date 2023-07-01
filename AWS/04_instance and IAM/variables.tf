variable users {
    type=list 
    default= ["Samantha","Pooja","Leela"]
}

variable "instance_name" {
    type=list
    default = ["ami-0e820afa569e84cc1", "ami-024e6efaf93d85776"]
}

variable "ins_type" {
  type=list
  default = ["t2.micro", "t2.nano"]
}

variable "ins_name" {
    type = list
    default = ["amazon linux", "Ubuntu"]
}

variable "testing" {
    type = bool
    
}