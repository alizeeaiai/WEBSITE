orders = [
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount: 35.50],
  [id: 125, ship_to: :TX, net_amount: 24.00],
  [id: 126, ship_to: :TX, net_amount: 44.80],
  [id: 127, ship_to: :NC, net_amount: 25.00],
  [id: 128, ship_to: :MA, net_amount: 10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00],
  [id: 130, ship_to: :NC, net_amount: 50.00]
]

rate = [NC: 0.075, TX: 0.08]
# defmodule Tax do
#   def entree(orders,rate) do
#     add_total(&1,rate)
#   end
#   def add_total(order=id:_,ship_to:s,net_amount:net,rate)
#     tax_rate = Keyword.get(rate,s)
#     total_amount = tax_rate * net + net
#     Keyword.put (order,:total,total_amount)
# end
# Tax.entree(orders,rate)

defmodule Tax do
  def a(orders,rate) do
    IO.inspect Enum.map orders,&b(&1,rate)
  end

  def b(order = [id: _,ship_to: s,net_amount: net],rate) do
    tax_rate = Keyword.get(rate,s,0)
    total_amount = tax_rate * net + net
    Keyword.put(order,:total,total_amount)
  end
end

Tax.a(orders,rate)

