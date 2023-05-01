Imports System

Module Program
    Sub Main(args As String())
        Console.WriteLine("TextTest")
        Dim Items As IList(Of Item) = New List(Of Item) From {
                New Item With {
                .Name = "Vest",
                .SellIn = 10,
                .Quality = 20
                },
                New Item With {
                .Name = "Aged Brie",
                .SellIn = 2,
                .Quality = 0
                },
                New Item With {
                .Name = "Juice",
                .SellIn = 5,
                .Quality = 7
                },
                New Item With {
                .Name = "Diamond",
                .SellIn = 0,
                .Quality = 80
                },
                New Item With {
                .Name = "Diamond",
                .SellIn = - 1,
                .Quality = 80
                },
                New Item With {
                .Name = "Backstage passes",
                .SellIn = 15,
                .Quality = 20
                },
                New Item With {
                .Name = "Backstage passes",
                .SellIn = 10,
                .Quality = 49
                },
                New Item With {
                .Name = "Backstage passes",
                .SellIn = 5,
                .Quality = 49
                },
                New Item With {
                .Name = "Bio Cake",
                .SellIn = 3,
                .Quality = 6
                }
                }
        Dim app = New GildedRose(Items)

        For i = 0 To 31 - 1
            Console.WriteLine("-------- day " & i & " --------")
            Console.WriteLine("name, sellIn, quality")

            For j = 0 To Items.Count - 1
                System.Console.WriteLine(Items(j))
            Next

            Console.WriteLine("")
            app.UpdateQuality()
        Next
    End Sub
End Module
