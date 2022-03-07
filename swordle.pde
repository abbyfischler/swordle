PImage[] myGif;
int totalFrames = 44;

//ABOUT
String[] aboutl1 = {"block0.png","block27.png"};
String[] aboutl2 = {"block1.png","block28.png"};
String[] aboutl3 = {"block2.png","block29.png"};
String[] aboutl4 = {"block3.png","block30.png"};
String[] aboutl5 = {"block31.png"};

//OCEAN
String[] oceanl1 = {"block4.png","block13.png"};
String[] oceanl2 = {"block5.png","block14.png"};
String[] oceanl3 = {"block6.png","block15.png"};
String[] oceanl4 = {"block7.png","block16.png"};
String[] oceanl5 = {"block17.png"};

//SALTY
String[] saltyl1 = {"block23.png", "block32.png", "block40.png"};
String[] saltyl2 = {"block24.png", "block33.png", "block41.png"};
String[] saltyl3 = {"block25.png", "block34.png", "block42.png"};
String[] saltyl4 = {"block26.png", "block43.png"};

//IVORY
String[] ivoryl1 = {"block35.png"};
String[] ivoryl2 = {"block36.png"};
String[] ivoryl3 = {"block37.png"};
String[] ivoryl4 = {"block38.png"};
String[] ivoryl5 = {"block39.png"};

//SASSY
String[] sassyl1 = {"block8.png","block18.png"};
String[] sassyl2 = {"block9.png","block19.png"};
String[] sassyl3 = {"block10.png","block20.png"};
String[] sassyl4 = {"block11.png","block21.png"};
String[] sassyl5 = {"block12.png","block22.png"};


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
