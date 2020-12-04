view: stores {
  sql_table_name: `demand_forecasting.stores`
    ;;

  dimension: assortment {
    type: string
    sql: ${TABLE}.Assortment ;;
  }

  dimension: competition_distance {
    type: number
    sql: ${TABLE}.CompetitionDistance ;;
  }

  dimension: competition_open_since_month {
    type: string
    sql: ${TABLE}.CompetitionOpenSinceMonth ;;
  }

  dimension: competition_open_since_year {
    type: string
    sql: ${TABLE}.CompetitionOpenSinceYear ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: promo2 {
    type: string
    sql: ${TABLE}.Promo2 ;;
  }

  dimension: promo2_since_week {
    type: string
    sql: ${TABLE}.Promo2SinceWeek ;;
  }

  dimension: promo2_since_year {
    type: string
    sql: ${TABLE}.Promo2SinceYear ;;
  }

  dimension: promo_interval {
    type: string
    sql: ${TABLE}.PromoInterval ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}.StoreType ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
