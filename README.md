# Mini Task repository

This repository contains lecture homework.


Mini Task #1 contains 2 files: ```script.rb```, ```script```. The first file outputs the calculation result 1000-7 to the console, the second script executes a command that reads a line from the command line and prints it to the console.

How to run Mini Task #1:

* To run the bash script, you need to enter the command:  

  ```
  ./script
  ```

* To run the ruby file, you must enter the command:

  ```sh
  ruby script.rb
  ```


Mini Task #2 contains the ```drinks.rb``` file which contains the Drinks class. The following functions are implemented in this class: item_in_stock, afforbadle, out_of_stock, how_much_left, total_stock.


How to run Mini Task #2

* Get to ```./MiniTask#2``` folder and run:

  ```sh
  ruby drinks.rb
  ```

Console output for Mini Task #2:

```ruby

["Cola", "Juice", "Water"]
###################
{:price=>40.0, :name=>"Pepsi", :quantity_by_size=>{}}
{:price=>39.99, :name=>"Water", :quantity_by_size=>{:l033=>1, :l2=>4}}
###################
[{:price=>40.0, :name=>"Pepsi", :quantity_by_size=>{}}]
###################
{:l033=>3, :l05=>7, :l1=>8, :l2=>4}
###################
36

```


Mini Task #3 contains a dsl.rb file that contains a Domain Specific Language (DSL) pseudo HTML page generator.



How to run  ```dsl.rb```:
* Get to ```./MiniTask#3``` folder and run:

  ```sh
  ruby dsl.rb
  ```

Console output for Mini Task #3:

```html

<!doctype html>

<html>

<head>
        <meta charset="utf-8" >


        <title>The HTML5 Template</title>
        <meta name="description" content="The HTML5 Template" >
        <meta name="author" content="MobiDev" >
        <link rel="stylesheet" href="css/styles.css?v=1.0">
</head>

<body>
        <div>Hello World</div>
        <script src="js/scripts.js"> </script>
</body>

</html>

```
