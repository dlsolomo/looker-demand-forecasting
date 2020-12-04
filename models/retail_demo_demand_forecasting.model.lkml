connection: "retail-demo-demand-forecasting"

# include all the views
include: "/views/**/*.view"

datagroup: retail_demo_demand_forecasting_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_demo_demand_forecasting_default_datagroup



explore: forecasted_sales {}

explore: stores {}
