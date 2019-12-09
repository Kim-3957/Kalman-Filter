# Kalman-Filter
I made tutorial for my studies regarding kalman filtering.  
I attach good article related to kalman filtering algorithms.  
I ommit that most of my codes are inspired by under atushi.  
>https://gist.github.com/AtsushiSakai/5376850

# Algorithm
* First, try to understand what is measurement models and kalman filter euqations.
![Kalman_table](/images/table.jpg)

* We are using constant velocity model for predicting state matrix.  
![Kalman_algorithm](/images/al.jpg)

# Result of distance filtering
![Kalman_distance](/images/kalman_distance.jpg)
* Remember this is just an example.  
* You can find Q and R for specific numbers in code script data.  

# Error of distance filtering
![Kalman_distance_error](/images/distance_error.jpg)

# result of velocity filtering
![Kalman_velocity](/images/kalman_velocity.jpg)

# Error of velocity filtering
![Kalman_velocity_error](/images/velocity_error.jpg)
