resource "databricks_library" "sparkXML" {
  cluster_id = databricks_cluster.shared_autoscaling.id
  maven {
    coordinates = "com.databricks:spark-xml_2.12:0.17.0"
  }
}
