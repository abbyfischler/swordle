void initalizePuzzle() {

  abouts1 = new PImage[4];
  abouts1[0] = resizer(loadImage("block0.png"));
  abouts1[1] = resizer(loadImage("block1.png"));
  abouts1[2] = resizer(loadImage("block2.png"));
  abouts1[3] = resizer(loadImage("block3.png"));

  abouts2 = new PImage[5];
  abouts2[0] = resizer(loadImage("block27.png"));
  abouts2[1] = resizer(loadImage("block28.png"));
  abouts2[2] = resizer(loadImage("block29.png"));
  abouts2[3] = resizer(loadImage("block30.png"));
  abouts2[4] = resizer(loadImage("block31.png"));

  ivorys1 = new PImage[5];
  ivorys1[0] = resizer(loadImage("block35.png"));
  ivorys1[1] = resizer(loadImage("block36.png"));
  ivorys1[2] = resizer(loadImage("block37.png"));
  ivorys1[3] = resizer(loadImage("block38.png"));
  ivorys1[4] = resizer(loadImage("block39.png"));
  oceans1 = new PImage[4];
  oceans1[0] = resizer(loadImage("block4.png"));
  oceans1[1] = resizer(loadImage("block5.png"));
  oceans1[2] = resizer(loadImage("block6.png"));
  oceans1[3] = resizer(loadImage("block7.png"));
  oceans2 = new PImage[4];
  oceans2[0] = resizer(loadImage("block14.png"));
  oceans2[1] = resizer(loadImage("block15.png"));
  oceans2[2] = resizer(loadImage("block16.png"));
  oceans2[3] = resizer(loadImage("block17.png"));
  saltys1 = new PImage[4];
  saltys1[0] = resizer(loadImage("block23.png"));
  saltys1[1] = resizer(loadImage("block24.png"));
  saltys1[2] = resizer(loadImage("block25.png"));
  saltys1[3] = resizer(loadImage("block26.png"));
  saltys2 = new PImage[3];
  saltys2[0] = resizer(loadImage("block32.png"));
  saltys2[1] = resizer(loadImage("block33.png"));
  saltys2[2] = resizer(loadImage("block34.png"));
  saltys3 = new PImage[4];
  saltys3[0] = resizer(loadImage("block40.png"));
  saltys3[1] = resizer(loadImage("block41.png"));
  saltys3[2] = resizer(loadImage("block42.png"));
  saltys3[3] = resizer(loadImage("block43.png"));
  sassys1 = new PImage[5];
  sassys1[0] = resizer(loadImage("block8.png"));
  sassys1[1] = resizer(loadImage("block9.png"));
  sassys1[2] = resizer(loadImage("block10.png"));
  sassys1[3] = resizer(loadImage("block11.png"));
  sassys1[4] = resizer(loadImage("block12.png"));
  sassys2 = new PImage[5];
  sassys2[0] = resizer(loadImage("block18.png"));
  sassys2[1] = resizer(loadImage("block19.png"));
  sassys2[2] = resizer(loadImage("block20.png"));
  sassys2[3] = resizer(loadImage("block21.png"));
  sassys2[4] = resizer(loadImage("block22.png"));
}

PImage resizer(PImage i) {
  i.resize(700, 0);
  return i;
}
