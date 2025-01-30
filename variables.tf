variable "client_server"{
    description = "Type of EC2 instance"
    default = "t2.nano"
}
variable client_ami{
    description="client ami"
    default = "ami-0c02fb55956c7d316"

}