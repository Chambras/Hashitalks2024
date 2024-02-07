resource "databricks_job" "ingestSongs" {
  name        = "Songs Workflow"
  description = "Ingest, prepare and analyze Songs Data."

  task {
    task_key = "1IngestSongsData"
    notebook_task {
      notebook_path = databricks_notebook.ingestSongs.path
    }
    existing_cluster_id = databricks_cluster.shared_autoscaling.id
  }

  task {
    task_key = "2PrepareSongsData"
    notebook_task {
      notebook_path = databricks_notebook.prepareSongsData.path
    }
    existing_cluster_id = databricks_cluster.shared_autoscaling.id

    depends_on {
      # IngestSongsData must finish before PrepareSongsData starts
      task_key = "1IngestSongsData"
    }
  }

  task {
    task_key = "3AnalyzeSongsData"
    notebook_task {
      notebook_path = databricks_notebook.analyzeSongsData.path
    }
    existing_cluster_id = databricks_cluster.shared_autoscaling.id

    depends_on {
      # PrepareSongsData must finish before AnalyzeSongsData starts
      task_key = "2PrepareSongsData"
    }
  }

  tags = var.tags
}
