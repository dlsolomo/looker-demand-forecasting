view: forecasted_sales {
  sql_table_name: `demand_forecasting.forecasted_sales`
    ;;

  dimension: actual {
    type: number
    sql: ${TABLE}.Actual ;;
  }

  dimension: forecast {
    type: number
    sql: ${TABLE}.Forecast ;;
  }

  dimension: goal {
    type: number
    sql: ${TABLE}.Goal ;;
  }

  dimension_group: sales_calendar {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Sales_Calendar_Date ;;
  }

  dimension: sales_forecasted {
    type: yesno
    sql: ${TABLE}.Sales_Forecasted ;;
  }

 dimension: sales_total_revenue {
  type: number
  sql: ${TABLE}.Sales_Total_Revenue ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
