mitBib n = new mitBib();

mitBib.Button knap = n.new Button(10, 10, 150, 50, "Slå med 6s terning!", this);
mitBib.Button knap2  = n.new Button(340, 10, 150, 50, "Slå med 10s terning!", this);

int sum;
int terningeKast;

void setup() {
  size(500, 300); 

  knap.addAction(new mitBib.Action() {   
    public void execute() {
      terningeKast = int(random(1, 6));
      sum += terningeKast;
    }
  }
  );

  knap2.addAction(new mitBib.Action() {   
    public void execute() {
      terningeKast = int(random(1, 10));
      sum += terningeKast;
    }
  }
  );
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
  knap.click(mouseX, mouseY);
  knap2.click(mouseX, mouseY);
}
