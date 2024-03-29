# Kalman-Filter
I made tutorial for my studies regarding kalman filtering.  
I attach good article related to kalman filtering algorithms.  
I ommit that most of my codes are inspired by under atushi.  
>https://gist.github.com/AtsushiSakai/5376850

# Algorithm summary
* First, try to understand what is measurement models and kalman filter euqations.
* I was inspired by Kalman filtering - Theory and practice using MATLAB
![Kalman_table](/images/table.jpg)

* We are using constant velocity model for predicting state matrix.  
![Kalman_algorithm](/images/al.jpg)

# Samples
* Here,  we show you example of radar tracking scenario when human is intruding into sensing area.
* Ture values were compared with motion capture system wich has relatively small measurement error.

# Result of distance filtering
![Kalman_distance](/images/kalman_distance.jpg)
* You can see that data got more smoother than discrete one.  
* You can find Q and R for specific numbers in code script data.  

# Error of distance filtering
![Kalman_distance_error](/images/distance_error.jpg)
* Error was almost same as raw.

# result of velocity filtering
![Kalman_velocity](/images/kalman_velocity.jpg)
* The aim of this filter was to estimate velocity when obervation of distance is only avaliable.  
* Therefore, we set observation matrix H as [1 0].  

# Error of velocity filtering
![Kalman_velocity_error](/images/velocity_error.jpg)
* Compared to raw data, it can be seen that variance of error got decreased.  

# Algorithm explained
1. State matrix model (SSM) 
* Firstly, think about car moving and the location of the car can be detected by use of GPS.  
* In this scenario, only the location of the car is known.  
* Throughout this example, estimating velocity by using discrete kalman filter is shown.  
![eq1](/images/eq1.jpg)


