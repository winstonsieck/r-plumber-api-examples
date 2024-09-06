library(plumber)


#* @apiTitle Aggregation API
#* @apiDescription API summarizes input employee data


#* Returns overall mean age and age by department for input data
#* @param employee_json
#* @post /employee-summary
function(employee_json) {
  df <- employee_json
  mean_age <- mean(df$age)
  dept_mean_ages_df <- aggregate(age~dept, data = df, FUN = mean)
  dept_mean_ages <- split(dept_mean_ages_df$age, dept_mean_ages_df$dept)
  list(mean_age = mean_age,
       dept_mean_ages = dept_mean_ages)
}

