namespace FirstProject.FirstProject;

page 50105 "Library Transactions"
{
    Caption = 'Library Transactions';
    PageType = List;
    SourceTable = "Library Transaction";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Transaction ID"; Rec."Transaction ID")
                {
                    ToolTip = 'Specifies the value of the Transaction ID field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Patron ID"; Rec."Patron ID")
                {
                    ToolTip = 'Specifies the value of the Patron ID field.', Comment = '%';
                }
                field("Employee No"; Rec."Employee No")
                {
                    ToolTip = 'Specifies the value of the Employee No field.', Comment = '%';
                }
                field("Transaction Date "; Rec."Transaction Date ")
                {
                    ToolTip = 'Specifies the value of the Transaction Date field.', Comment = '%';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ToolTip = 'Specifies the value of the Transaction Type field.', Comment = '%';
                }
            }
        }
    }
}
