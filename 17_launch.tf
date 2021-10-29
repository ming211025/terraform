resource "aws_launch_configuration" "kmj_lacf" {
    name_prefix = "kmj-web-"
    image_id = aws_ami_from_instance.kmj_ami.id
    instance_type = "t2.micro"
    iam_instance_profile = "admin_role"
    security_groups = [aws_security_group.kmj_websg.id]
    key_name = "tf-key"
    user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
    lifecycle {
      create_before_destroy = true
    }
}