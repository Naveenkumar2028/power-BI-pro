// Power Query starter transformation for sales_data.csv
let
    Source = Csv.Document(File.Contents("sales_data.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    ChangedTypes = Table.TransformColumnTypes(PromotedHeaders, {
        {"OrderID", Int64.Type}, {"OrderDate", type date}, {"CustomerID", type text},
        {"CustomerName", type text}, {"Segment", type text}, {"ProductID", type text},
        {"ProductName", type text}, {"Category", type text}, {"Region", type text},
        {"State", type text}, {"City", type text}, {"Quantity", Int64.Type},
        {"UnitPrice", type number}, {"DiscountPct", type number}, {"CostPerUnit", type number}
    }),
    RemovedBlankRows = Table.SelectRows(ChangedTypes, each [OrderID] <> null),
    AddedNetSales = Table.AddColumn(RemovedBlankRows, "NetSales", each [Quantity] * [UnitPrice] * (1 - [DiscountPct]), type number),
    AddedCost = Table.AddColumn(AddedNetSales, "TotalCost", each [Quantity] * [CostPerUnit], type number),
    AddedProfit = Table.AddColumn(AddedCost, "Profit", each [NetSales] - [TotalCost], type number)
in
    AddedProfit
