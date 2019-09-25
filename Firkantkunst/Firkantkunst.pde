int xstart = 25;//hvorhenne på x aksen jeg vil have min første firkant starter
int ystart = 25;//hvorhenne på y aksen den skal starte
int b= 55; //b står for bredden af mine firkanter
int a = 1; //a er afstanden mellem dem
int s = 8; //jeg vil gerne have 8 firkanter hen af x aksen
int t = 8; //og også 8 hen af y aksen
float shake = 2.5; // Bestemmer hvor meget jeg vil have de vibrerer. Bruger float så jeg kan bruge et decimal tal


void setup() {
  size(500, 500);
}

void draw() {
  clear();
  for (int j=0; j<t; ++j) {
    int y = ystart + j*b + j*a;
    for (int i=0; i<s; ++i) {
      int x = xstart + i*b + i*a;
      int d = (int)random(-shake, shake);
      fill(5+(x + y)*0.25, 150, 10);//jeg har brugt alle 2 dele af RGB farverne for at gøre dem en specifik farve og så skifte lidt til sidst
      rect(x+d, y+d, b, b);
    }
  }
  //jeg har brugt alle 2 dele af RGB farverne for at gøre dem en specifik farve og så skifte lidt til sidst
}
