Type
Тree =^PNode;
PNode=record
        Data:char;
        Parent : Tree;
        left: Tree;
        Right: Tree;
end;    
procedure preorder(Node:Tree);
begin
  if Node <> Nil then 
  begin
    write(Node^.data);
    Preorder(node^.left);
    Preorder(node^.right);
  end;
end;

procedure postorder(Node:Tree);
begin
  if Node <> Nil then 
  begin
    postorder(node^.left);
    postorder(node^.right);
    write(Node^.data);
  end;
end;
procedure Simorder(Node:Tree);
begin
  if Node <> Nil then 
  begin
    Simorder(node^.left);
    write(Node^.data);
    Simorder(node^.right);
    
  end;
end;

procedure PrintTree(Node: Tree;l: integer);
var i:integer;
begin
  if Node <> Nil then begin
    PintTree(Node^.right,l+1);
  for i:=0 to l-1 do write (' ');
    write(Node^.data);
    PintTree(Node^.left,l+1);
    end
    else writeln;
  
end;
