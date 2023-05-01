with Ada.Text_IO;
use Ada.Text_IO;

with Items;
use Items;

with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

with Gilded_Rose;
use Gilded_Rose;

procedure Program is
  Things : Item_Vecs.Vector;
begin
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Vest"),
     Sell_In => 10,
     Quality => 20));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Aged Brie"),
     Sell_In => 2,
     Quality => 0));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Juice"),
     Sell_In => 5,
     Quality => 7));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Diamond"),
     Sell_In => 0,
     Quality => 80));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Diamond"),
     Sell_In => -1,
     Quality => 80));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Backstage passes"),
     Sell_In => 15,
     Quality => 20));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Backstage passes"),
     Sell_In => 10,
     Quality => 49));
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Backstage passes"),
     Sell_In => 5,
     Quality => 49));
  -- this conjured item does not work properly yet
  Things.Append(New_Item =>
    (Name => To_Unbounded_String("Bio Cake"),
     Sell_In => 3,
     Quality => 6));


  declare
    App : Gilded_Rose.Gilded_Rose := (Items => Things);
  begin
    Put_Line("TextTest");

    for I in 0 .. 30 loop
      Put_Line("-------- day" & Integer'Image(I) & " --------");
      Put_Line("name, sellIn, quality");

      for Each of App.Items loop
        Put_Line(To_String(Each));
      end loop;
      Put_Line("");

      Update_Quality(App);
    end loop;
  end;
end;
