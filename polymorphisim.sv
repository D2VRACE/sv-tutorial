class baseclass;
  virtual function void display();
    $display("iam in base class");
  endfunction  
endclass

class childclass extends baseclass;
 
  function void display();
    $display("iam in child class");
  endfunction
endclass

module tb;
  initial
    begin
      baseclass b;
      childclass c;
      b=new();
      c=new();
      b=c;
      b.display();
    end
endmodule
  
