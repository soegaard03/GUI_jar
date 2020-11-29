mitBib n = new mitBib();

mitBib.Button knap   = n.new Button(10, 10, 150, 50, "Slå med 6s terning!", this);
mitBib.Button knap2  = n.new Button(340, 10, 150, 50, "Slå med 10s terning!", this);
mitBib.Button knaps  = n.new Button(10, 70, 50, 50, "Snyd", this);

int sum;
int terningeKast;
boolean snydeknap = false;

void setup() {
  size(500, 300); 

  knap.addAction(new mitBib.Action() {   
    public void execute() {
      if(snydeknap){
        terningeKast = 6;
      } else {
      terningeKast = int(random(1, 6));
      sum += terningeKast;
    }
  }
 // );
  }

  knap2.addAction(new mitBib.Action() {   
    public void execute() {
      if(snydeknap = true){
        terningeKast = 10;}
        else{
      terningeKast = int(random(1, 10));
      sum += terningeKast;
    }
  }
  );
}
}

void draw() {
  clear();
  knap.display();
  knap2.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  knap.click();
  knap2.click();
}
