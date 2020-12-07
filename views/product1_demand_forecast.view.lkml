view: product1_demand_forecast {
  sql_table_name: `midatlantic-retail-master-demo.demand_forecasting.product1_demand_forecast`
    ;;

  dimension_group: _sales_calendar_week {
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
    sql: ${TABLE}._Sales_Calendar_Week ;;
  }

  dimension: yesno {
    type: yesno
    sql: ${TABLE}._Sales_Forecasted__Yes___No_ ;;
  }

  dimension: acutal {
    type: number
    sql: ${TABLE}.Acutal ;;
  }

  dimension: forecasted {
    type: number
    sql: ${TABLE}.Forecasted ;;
  }

  dimension: lift {
    type: number
    sql: ${TABLE}.Lift ;;
  }

  dimension: total_unit_sold {
    type: number
    sql: ${TABLE}.Total_Unit_Sold ;;
  }

  dimension: total_units {
    type: number
    sql: ${TABLE}.Total_Units ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
