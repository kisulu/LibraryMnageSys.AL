namespace FirstProject.FirstProject;
using System.Visualization;
using LibraryManagementSystem.LibraryManagementSystem;

page 50106 "Library Role Center"
{
    Caption = 'Library Role Center';
    PageType = RoleCenter;
    
    layout
    {
        area(RoleCenter)
        {
         part(Headline; "Headline RC Business Manager"){
            ApplicationArea = Basic, Suite;
         }
        }

    }
    actions{
        area(Sections){
            group(Books){
                action("&Books"){
                    ApplicationArea = All;
                    RunObject = page Books;
                }

                action(Authors){
                    ApplicationArea = Basic, Suite;
                    RunObject = page Authors;
                }
            }
            group("&Patrons"){
                action(Patrons){
                    ApplicationArea = All;
                    RunObject = page Patrons;
                }
            }
            // exposing
            group("Books Lending"){
                action("Lendings"){
                    ApplicationArea=all;
                    RunObject = page "Book Lendings";

                }
            }
        }
        area(Creation){
                action(Book){
                    ApplicationArea = Basic, Suite;
                    RunObject = page Book;
                    RunPageMode = Create;
                }
                action(Patron){
                    ApplicationArea = Basic, Suite;
                    RunObject = page Patron;
                    RunPageMode = Create; //creation of new items
                }
        }
        area(Processing){

        }
        area(Reporting){

        }
        area(Embedding){

        }
    }
}
