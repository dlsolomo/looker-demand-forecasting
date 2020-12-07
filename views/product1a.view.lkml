view: product1a {
  sql_table_name: `demand_forecasting.product1a`
    ;;

  dimension: actual {
    type: number
    sql: ${TABLE}.actual ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
