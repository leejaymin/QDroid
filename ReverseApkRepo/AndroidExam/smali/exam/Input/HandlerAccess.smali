.class public Lexam/Input/HandlerAccess;
.super Landroid/app/Activity;
.source "HandlerAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method SetTouchHandler(Landroid/widget/TextView;)V
    .locals 3
    .parameter "tv"

    .prologue
    .line 86
    move-object v0, p1

    .line 88
    .local v0, fText:Landroid/widget/TextView;
    const v2, 0x7f0c0021

    invoke-virtual {p0, v2}, Lexam/Input/HandlerAccess;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 89
    .local v1, linear:Landroid/widget/LinearLayout;
    new-instance v2, Lexam/Input/HandlerAccess$1;

    invoke-direct {v2, p0, v0}, Lexam/Input/HandlerAccess$1;-><init>(Lexam/Input/HandlerAccess;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lexam/Input/HandlerAccess;->setContentView(I)V

    .line 81
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lexam/Input/HandlerAccess;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, outText:Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lexam/Input/HandlerAccess;->SetTouchHandler(Landroid/widget/TextView;)V

    .line 83
    return-void
.end method
