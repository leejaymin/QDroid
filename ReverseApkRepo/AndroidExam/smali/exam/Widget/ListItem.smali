.class Lexam/Widget/ListItem;
.super Ljava/lang/Object;
.source "ListOfViews.java"


# instance fields
.field BtnText:Ljava/lang/String;

.field EditText:Ljava/lang/String;

.field IconRes:I

.field Text:Ljava/lang/String;

.field Type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "aType"
    .parameter "aText"
    .parameter "aEditText"
    .parameter "aBtnText"
    .parameter "aIconRes"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lexam/Widget/ListItem;->Type:I

    .line 39
    iput-object p2, p0, Lexam/Widget/ListItem;->Text:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lexam/Widget/ListItem;->EditText:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lexam/Widget/ListItem;->BtnText:Ljava/lang/String;

    .line 42
    iput p5, p0, Lexam/Widget/ListItem;->IconRes:I

    .line 43
    return-void
.end method
