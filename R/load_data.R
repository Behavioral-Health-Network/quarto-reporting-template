# Placeholder function for loading program data.
# Replace <program> with your program name and update the logic
# to source and run your program's ETL pipeline.

load_<program>_data <- function() {
  # Example pattern for real projects:
  #
  # etl_dir <- Sys.getenv("FAMCARE_ETL_GOVERNED")
  #
  # if (etl_dir == "") {
  #   stop("Environment variable for ETL directory is not set.")
  # }
  #
  # etl_env <- new.env(parent = globalenv())
  # etl_env$etl_dir <- etl_dir
  #
  # sys.source(file.path(etl_dir, "etl", "setup.R"), envir = etl_env)
  # sys.source(file.path(etl_dir, "etl", "<program>.R"), envir = etl_env)
  #
  # data <- etl_env$run_<program>_etl(etl_env$<program>_paths)
  # return(data)
  #
  # For the template, return an empty list so the project renders.
  list()
}
