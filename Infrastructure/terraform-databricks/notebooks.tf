# Create initial Databricks notebook
# FAA/SWIM Streaming Workflow
resource "databricks_notebook" "tfms" {
  source = "../../Notebooks/SWIM/python/tfms.py"
  path   = "/Shared/SWIM/TFMS"
}

resource "databricks_notebook" "stdds" {
  source = "../../Notebooks/SWIM/python/stdds.py"
  path   = "/Shared/SWIM/STDDS"
}

resource "databricks_notebook" "tbfm" {
  source = "../../Notebooks/SWIM/python/tbfm.py"
  path   = "/Shared/SWIM/TBFM"
}

# Batch processing Workflow -  Songs Workflow
resource "databricks_notebook" "ingestSongs" {
  source = "../../Notebooks/Songs/python/ingestSongs.py"
  path   = "/Shared/Songs/IngestSongsData"
}

resource "databricks_notebook" "prepareSongsData" {
  source = "../../Notebooks/Songs/sql/prepareSongsData.sql"
  path   = "/Shared/Songs/PrepareSongsData"
}

resource "databricks_notebook" "analyzeSongsData" {
  source = "../../Notebooks/Songs/sql/analyzeSongsData.sql"
  path   = "/Shared/Songs/AnalyzeSongsData"
}
