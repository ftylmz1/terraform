locals {

env = "module_test"


dah = {
  "file01" = {
    source_path = "cbs_notebooks/dah/dah.py"
    file_name = "${local.env}_dah_dah_nb"
    notebook_params = {
      dynamic_param_01 = "param 01"
    }

  }
  "file02" = {
    source_path = "datasource_notebooks/ga/ga.py"
    file_name = "${local.env}_dah_ga_nb"
    notebook_params = {
      big_query_set_id = "super secret ga query set id"
    }
  }
}

}



