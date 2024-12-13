
# Observe changes to start_date and update end_date limits
observeEvent(input$start_date, {
  updateDateInput(session, "end_date",
                  min = input$start_date,
                  max = input$start_date + 365)
})

# Observe changes to end_date and update start_date limits
observeEvent(input$end_date, {
  updateDateInput(session, "start_date",
                  min = input$end_date - 365,
                  max = input$end_date)
})
