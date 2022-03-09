PImage[] myGif;
int totalFrames = 44;

//ABOUT
//senario one; group by screenshot by word have an array list go through each senario and pick one randomly each time
//from one to five
String[] abouts1 = {"block0.png","block1.png","block2.png","block3.png"};
String[] abouts2 = {"block27.png","block28.png","block29.png","block30.png","block31.png"};


//OCEAN
String[] oceans1 = {"block4.png","block5.png","block6.png","block7.png"};
String[] oceans2 = {"block13.png","block14.png","block15.png","block16.png","block17.png"};


//SASSY
String[] sassys1 = {"block8.png","block9.png","block10.png","block11.png","block12.png"};
String[] sassys2 = {"block18.png","block19.png","block20.png","block21.png","block22.png"};



/* File name pattern for your image sequence
 my files look like this:
 frame_00_delay-0.1s.png
 frame_01_delay-0.1s.png
 frame_02_delay-0.1s.png
 ...
 frame_10_delay-0.1s.png

 notice each frame is a 2 digit integer with a leading zero if needed
 */
String filePattern = "block%d.png";

// subtract 'speed' from this value to get the 
int SPEED = 11;
int speed = 1;

void setup() {
  //int newW = int (1773*0.75);
  //int newH =  int(1704*0.75);
  size(1330,1278);

  //creates an EMPTY array that will hold the frames once we load them
  myGif = new PImage[totalFrames];
  
  
  for( int frameNumber = 0; frameNumber < totalFrames; ++frameNumber) {
    String fn = String.format(filePattern,frameNumber);
    //println("loading file,",fn);

    // now load the image into the right position in the array
    myGif[frameNumber] = loadImage(fn);
    myGif[frameNumber].resize(0,700);
  }
  println("..loaded ", totalFrames, " files");
}


void draw() {
  background(0);
  // tweak the number to make the speed faster
  speed = SPEED - 1;
  
  // this will limit the speed to an acceptable range
  speed = constrain(speed,1,10);
  
  // frameCount is a Processing variable that counts the total number of frames
  // that have been drawn
  
  if( myGif[(frameCount / speed) % totalFrames] != null ) {
    image( myGif[ (frameCount / speed) % totalFrames], 0, 0 );
  } else {
    background(255,0,0);
  }
}
