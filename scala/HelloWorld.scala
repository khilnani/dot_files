object HelloWorld {
  /* This is my first java program.  
   * This will print 'Hello World' as the output
   */
  def main(args: Array[String]) {
    var h = "Hello"
    if(args.length > 0)
      println("Args: " + args(0))
    var i=0; 
    var j=0;
    for(i <- 1 to 10; j <- 11 to 20
        if i % 2 == 0)
        println(i + ". " + j + ". " + h + ": " + addInt(i, j)) // prints Hello World
  }

  def addInt(a:Int, b:Int) : Int = {
    var sum = a + b
    return sum
  }
}
