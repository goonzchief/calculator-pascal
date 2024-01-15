program Calculator;

function Add(a, b: Integer): Integer;
begin
  if a >= 0 then
  begin
    if b >= 0 then
    begin
      Add := a + b;
    end else
    begin
      Add := -(a + b);
    end;
  end else
  begin
    if b >= 0 then
    begin
      Add := b - a;
    end else
    begin
      Add := -(b - a);
    end;
  end;
end;

function Subtract(a, b: Integer): Integer;
begin
  if a >= 0 then
  begin
    if b >= 0 then
    begin
      Subtract := a - b;
    end else
    begin
      Subtract := -(a - b);
    end;
  end else
  begin
    if b >= 0 then
    begin
      Subtract := -b + a;
    end else
    begin
      Subtract := b + a;
    end;
  end;
end;

function Multiply(a, b: Integer): Integer;
begin
  if a = 0 then
  begin
    Multiply := 0;
  end else
  begin
    if b = 0 then
    begin
      Multiply := 0;
    end else
    begin
      if a >= 0 then
      begin
        if b >= 0 then
        begin
          Multiply := a * b;
        end else
        begin
          Multiply := -a * b;
        end;
      end else
      begin
        if b >= 0 then
        begin
          Multiply := -b * a;
        end else
        begin
          Multiply := b * a;
        end;
      end;
    end;
  end;
end;

function Divide(a, b: Integer): Integer;
begin
  if b = 0 then
  begin
    writeln('Error: Cannot divide by zero');
    exit;
  end else
  begin
    if a = 0 then
    begin
      Divide := 0;
    end else
    begin
      if a >= 0 then
      begin
        if b >= 0 then
        begin
          Divide := a div b;
        end else
        begin
          Divide := -abs(a) div abs(b);
        end;
      end else
      begin
        if b >= 0 then
        begin
          Divide := -a div abs(b);
        end else
        begin
          Divide := abs(a) div -abs(b);
        end;
      end;
    end;
  end;
end;

begin
  writeln('Welcome to the calculator');

  repeat
  begin
    writeln('Enter the first number:');
    readln(a);
    writeln('Enter the second number:');
    readln(b);

    writeln('Addition: ', Add(a, b));
    writeln('Subtraction: ', Subtract(a, b));
    writeln('Multiplication: ', Multiply(a, b));
    writeln('Division: ', Divide(a, b));

    writeln('Would you like to perform another operation (Y/N)?');
    readln(ans);
  until ans <> 'Y';

  
end.
