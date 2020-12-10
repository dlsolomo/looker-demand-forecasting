view: brand_demand {
  sql_table_name: `midatlantic-retail-master-demo.demand_forecasting.brand_demand`
    ;;

  dimension: actual {
    type: number
    sql: ${TABLE}.actual ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: forecasted {
    type: number
    sql: ${TABLE}.forecasted ;;
  }

  dimension: lift {
    type: number
    sql: ${TABLE}.lift ;;
  }

  dimension_group: sales_calendar_week {
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
    sql: ${TABLE}.sales_calendar_week ;;
  }

  dimension: total_units {
    type: number
    sql: ${TABLE}.total_units ;;
  }

  dimension: total_units_sold {
    type: number
    sql: ${TABLE}.total_units_sold ;;
  }

  dimension: yesno {
    type: yesno
    sql: ${TABLE}.yesno ;;
  }

  measure:  total_actual_plus_forecasted{
    type: number
    sql: ${total_units} ;;
  }

  measure:  all_units_sold{
    type: number
    sql: ${total_units_sold} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
