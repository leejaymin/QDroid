.class public Lexam/Network/JSONArrayTest;
.super Landroid/app/Activity;
.source "JSONArrayTest.java"


# instance fields
.field mResult:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f030046

    invoke-virtual {p0, v1}, Lexam/Network/JSONArrayTest;->setContentView(I)V

    .line 18
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lexam/Network/JSONArrayTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lexam/Network/JSONArrayTest;->mResult:Landroid/widget/EditText;

    .line 20
    const v1, 0x7f0c0051

    invoke-virtual {p0, v1}, Lexam/Network/JSONArrayTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/Network/JSONArrayTest$1;

    invoke-direct {v1, p0}, Lexam/Network/JSONArrayTest$1;-><init>(Lexam/Network/JSONArrayTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
