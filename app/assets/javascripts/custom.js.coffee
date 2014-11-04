ready -> 

$("#first").autotab 
  target: "second" 
  format: "numeric"

$("#second").autotab
  target: "third"
  format: "numeric"
  previous: "first"

$("#third").autotab
  previous: "second"
  format: "numeric"

return
