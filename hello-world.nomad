job "example" {
  datacenters = ["dc1"]

  type = "service"

  group "cache" {
    count = 1

    restart {
      attempts = 10
      interval = "5m"
      delay = "30s"
      mode = "delay"
    }

    task "hello-world" {
      driver = "raw_exec"

      config {
        command = "/usr/local/sbin/run-tomcat.sh"
      }

      env {
        "VERSION" = "1.0"
      }
    }
  }
}
