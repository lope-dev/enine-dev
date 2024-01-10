resource "null_resource" "password" {
  provisioner "local-exec" {
    command = <<-EOT
    $Secure_String_Pwd = ConvertTo-SecureString "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" -AsPlainText -Force
    EOT

    interpreter = ["PowerShell", "-Command"]
  }
}
