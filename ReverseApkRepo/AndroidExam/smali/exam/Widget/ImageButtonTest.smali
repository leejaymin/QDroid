.class public Lexam/Widget/ImageButtonTest;
.super Landroid/app/Activity;
.source "ImageButtonTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v1, 0x7f03006a

    invoke-virtual {p0, v1}, Lexam/Widget/ImageButtonTest;->setContentView(I)V

    .line 14
    const v1, 0x7f0c0083

    invoke-virtual {p0, v1}, Lexam/Widget/ImageButtonTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 15
    .local v0, imgbtn:Landroid/widget/ImageButton;
    new-instance v1, Lexam/Widget/ImageButtonTest$1;

    invoke-direct {v1, p0}, Lexam/Widget/ImageButtonTest$1;-><init>(Lexam/Widget/ImageButtonTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method
