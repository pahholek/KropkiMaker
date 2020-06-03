IntList Xcords;
IntList Ycords;
int size;
public void setup (){
  size(952,1347);
  Xcords = new IntList ();
  Ycords = new IntList ();
}

public void draw (){
//Make Line, Save Dots pos
 if (mousePressed == true) {
   if (Xcords.size() == 0){
     Xcords.append(mouseX);
     Ycords.append(mouseY);
     delay(300);
   }
   else{
     Xcords.append(mouseX);
     Ycords.append(mouseY);
     size = Xcords.size()-2;
     strokeWeight(2);
     line(Xcords.get(size), Ycords.get(size), mouseX, mouseY);
     delay(300);
   }
 }
 //convert to dots
 if (keyPressed == true && key == 'c'){
   clear();
   background(255);
   strokeWeight(10);
   int i = 0;
   while (true) {
     int x = Xcords.get(i);
     int y = Ycords.get(i);
     i++;
     point(x,y);
     textSize(15);
     fill(0);
     text(i, x+7, y-7);
   
     delay(100);
     if (i == Xcords.size()){
       break;
     }
   }
     
   }
  if (keyPressed == true && key == 's'){
    saveFrame("Dots-######.png");
    delay(300);
  }
  if (keyPressed == true && key == 'd'){
    Xcords = new IntList ();
    Ycords = new IntList ();
    clear();
   background(255);
    
  }
  if (keyPressed == true && key == 'e'){
    exit();
  }
//Debug Numbers ▼
println(Xcords);
//
}
