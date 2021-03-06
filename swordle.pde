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


//ABOUT
//aray list for reach word

PImage[] abouts1;
PImage[] abouts2;


//IVORY

PImage[] ivorys1;

//OCEAN
PImage[] oceans1;
PImage[] oceans2;

//SALTY
PImage[] saltys1;
PImage[] saltys2;
PImage[] saltys3;

//SASSY
PImage[] sassys1;
PImage[] sassys2;

ArrayList<PImage[]> words;


// subtract 'speed' from this value to get the
int SPEED = 11;
int speed = 1;
int currentFrame = 0;
PImage[] currentPuzzle;


void setup() {
  //int newW = int (1773*0.75);
  //int newH =  int(1704*0.75);
  size(700, 750);

  //creates an EMPTY array that will hold the frames once we load them
//  myGif = new PImage[totalFrames];

/*
  for ( int frameNumber = 0; frameNumber < totalFrames; ++frameNumber) {
    String fn = String.format(filePattern, frameNumber);
    //println("loading file,",fn);

    // now load the image into the right position in the array
    myGif[frameNumber] = loadImage(fn);
    myGif[frameNumber].resize(0, 0);
  }
  */
  //println("..loaded ", totalFrames, " files");

  initalizePuzzle();

  /*
abouts1 = {loadImage("block0.png"), loadImage("block1.png"), loadImage("block2.png"), loadImage("block3.png")};
   abouts2 = {loadImage("block27.png"), loadImage("block28.png"), loadImage("block29.png"), loadImage("block30.png"), loadImage("block31.png")};
   
   //IVORY
   
   ivorys1 = {loadImage("block35.png"), loadImage("block36.png"), loadImage("block37.png"), loadImage("block38.png"), loadImage("block39.png")};
   
   //OCEAN
   oceans1 = {loadImage("block4.png"), loadImage("block5.png"), loadImage("block6.png"), loadImage("block7.png")};
   oceans2 = {loadImage("block13.png"), loadImage("block14.png"), loadImage("block15.png"), loadImage("block16.png"), loadImage("block17.png")};
   
   //SALTY
   saltys1 = {loadImage("block23.png"), loadImage("block24.png"), loadImage("block25.png"), loadImage("block26.png")};
   saltys2 = {loadImage("block32.png"), loadImage("block33.png"), loadImage("block34.png")};
   saltys3 = {loadImage("block40.png"), loadImage("block41.png"), loadImage("block42.png"), loadImage("block43.png")};
   
   //SASSY
   sassys1 = {loadImage("block8.png"), loadImage("block9.png"), loadImage("block10.png"), loadImage("block11.png"), loadImage("block12.png")};
   sassys2 = {loadImage("block18.png"), loadImage("block19.png"), loadImage("block20.png"), loadImage("block21.png"), loadImage("block22.png")};
   
   */
  currentPuzzle = sassys2;


  words = new ArrayList<PImage[]>();
  words.add(abouts1);
  words.add(abouts2);
  words.add(ivorys1);
  words.add(saltys1);
  words.add(saltys2);
  words.add(saltys3);
  words.add(oceans1);
  words.add(oceans2);
  words.add(sassys1);
  words.add(sassys2);

  //randomly pick a word array from the list of arrays
  int i = int(random(1.0) * words.size());
  currentPuzzle = words.get(i);

  currentFrame = 0;
  frameRate(1.5);
}


void draw() {
  background(0);
  // tweak the number to make the speed faster
  speed = SPEED - 1;

  // this will limit the speed to an acceptable range
  speed = constrain(speed, 1, 10);

  // frameCount is a Processing variable that counts the total number of frames
  // that have been drawn
  /**
   if ( myGif[(frameCount / speed) % totalFrames] != null ) {
   image( myGif[ (frameCount / speed) % totalFrames], 0, 0);
   } else {
   background(255, 0, 0);
   }
   **/
  if (currentFrame < currentPuzzle.length) {
    image(currentPuzzle[currentFrame], 0, 0);
    currentFrame++;
    
    
  } else {
    //new puzzle

    //get a random puzzle
    int a = int(random(1.0) * words.size());
    currentPuzzle = words.get(a);
  
    currentFrame = 0;
  }
}
