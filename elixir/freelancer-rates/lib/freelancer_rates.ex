defmodule FreelancerRates do
  @daily_rate 8
  @billable_days 22

  def daily_rate(hourly_rate), do: hourly_rate * @daily_rate * 1.0

  def apply_discount(before_discount, discount), do: before_discount * (1 - discount / 100)

  def monthly_rate(hourly_rate, discount) do
    daily_rate(hourly_rate)
    |> apply_discount(discount)
    |> Kernel.*(@billable_days)
    |> Float.ceil
    |> Kernel.trunc
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_daily_rate = daily_rate(hourly_rate) |> apply_discount(discount)

    budget / discounted_daily_rate
    |> Float.floor(1)
  end
end
