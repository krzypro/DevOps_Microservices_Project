$PORT=8000
Write-Host "Port: $PORT"

# POST method predict

$body = '{  
   "CHAS":{  
      "0":0
   },
   "RM":{  
      "0":6.575
   },
   "TAX":{  
      "0":296.0
   },
   "PTRATIO":{  
      "0":15.3
   },
   "B":{  
      "0":396.9
   },
   "LSTAT":{  
      "0":4.98
   }
}'

Invoke-WebRequest -Uri "http://localhost:$PORT/predict" -Method "POST" -ContentType "application/json" -Body $body
