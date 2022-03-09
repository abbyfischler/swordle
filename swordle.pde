PImage[] myGif;
int totalFrames = 44;

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
  size(1330, 1278);

  //creates an EMPTY array that will hold the frames once we load them
  myGif = new PImage[totalFrames];


  for ( int frameNumber = 0; frameNumber < totalFrames; ++frameNumber) {
    String fn = String.format(filePattern, frameNumber);
    //println("loading file,",fn);

    // now load the image into the right position in the array
    myGif[frameNumber] = loadImage(fn);
    myGif[frameNumber].resize(0, 700);
  }
  println("..loaded ", totalFrames, " files");
//ABOUT
PImage[] abouts1 = {loadImage("block0.png"),loadImage("block1.png"), loadImage("block2.png"),loadImage("block3.png")};
PImage[] abouts2 = {loadImage("block27.png"),loadImage("block28.png"), loadImage("block29.png"),loadImage("block30.png"),loadImage("block31.png")};


  ArrayList<PImage[]> words = new ArrayList<PImage[]>();
  words.add(abouts1);


  
}


void draw() {
  background(0);
  // tweak the number to make the speed faster
  speed = SPEED - 1;

  // this will limit the speed to an acceptable range
  speed = constrain(speed, 1, 10);

  // frameCount is a Processing variable that counts the total number of frames
  // that have been drawn

  if ( myGif[(frameCount / speed) % totalFrames] != null ) {
    image( myGif[ (frameCount / speed) % totalFrames], 0, 0 );
  } else {
    background(255, 0, 0);
  }
}
