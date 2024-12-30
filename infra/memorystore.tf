# Create the Memorystore (redis) instance
resource "google_redis_instance" "redis-cart" {
  name           = "redis-cart"
  memory_size_gb = 1
  region         = var.region

  # count specifies the number of instances to create;
  # if var.memorystore is true then the resource is enabled
  count          = var.memorystore ? 1 : 0

  redis_version  = "REDIS_7_0"
  project        = var.project_id

  depends_on = [
    module.enable_google_apis
  ]
}
