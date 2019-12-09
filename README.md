<script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-MML-AM_CHTML'></script>
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

# Example
$$x = 1$$ 

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

# Error of velocity filtering
![Kalman_velocity_error](/images/velocity_error.jpg)
