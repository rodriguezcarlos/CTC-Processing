/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[10];   // Array for 10 images
String imFile[] = {"0.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"}; 

void setup() {
  size(140, 285);  // 6 digits in three rows and two columns   
  for (int i = 0; i < 10; i = i + 1) {
    im[i] = loadImage(imFile[i]);  
  }
}

void draw() {
  int h = hour();             
  int h_dec = int(h / 10);    
  int h_uni = h - h_dec * 10; 
  
  image(im[h_dec], 0, 0);     
  image(im[h_uni], 70, 0);    
  
  int m = minute();           // Take the minutes from the computer's clock and store it in a variable
  int m_dec = int(m / 10);    // Get the most significant digit
  int m_uni = m - m_dec * 10; // Get the least significant digit
  
  image(im[m_dec], 0, 95);    // Show the most significant digit
  image(im[m_uni], 70, 95);   // Show the least significant digit
  
  int s = second();           // Take the seconds from the computer's clock and store it in a variable
  int s_dec = int(s / 10);    // Get the most significant digit
  int s_uni = s - s_dec * 10; // Get the least significant digit
  
  image(im[s_dec], 0, 190);   // Show the most significant digit
  image(im[s_uni], 70, 190);  // Show the least significant digit
}
