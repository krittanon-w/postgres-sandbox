import scala.util.Random


object generate_sql extends App {
  val products = List(
    "Orbital Keys",
    "XPress Bottle",
    "Swish Wallet",
    "Sharpy Knife",
  )

  (0 to 20).toList.foreach { _ =>
    val name = Random.shuffle(products).head
    val price = 100 + (Random.nextInt(5) * 100)
    val month = 5 + Random.nextInt(4)
    val date = 10 + Random.nextInt(10)
    def hh = 10 + Random.nextInt(11)
    val mm = 10 + Random.nextInt(40)
    val ss = 10 + Random.nextInt(40)
    val sql = s"insert into public.products (product_id, customer_id, created_at) values ('$name', $price, '2022-0$month-$date $hh:$mm:$ss.000 +0700');"
    println(sql)
  }
}
