.class public Lexam/dialog/PopupTest;
.super Landroid/app/Activity;
.source "PopupTest.java"


# instance fields
.field linear:Landroid/widget/LinearLayout;

.field popup:Landroid/widget/PopupWindow;

.field popupview:Landroid/view/View;


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
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lexam/dialog/PopupTest;->setContentView(I)V

    .line 18
    const v2, 0x7f0c0021

    invoke-virtual {p0, v2}, Lexam/dialog/PopupTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lexam/dialog/PopupTest;->linear:Landroid/widget/LinearLayout;

    .line 19
    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lexam/dialog/PopupTest;->popupview:Landroid/view/View;

    .line 20
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lexam/dialog/PopupTest;->popupview:Landroid/view/View;

    const/16 v4, 0xc8

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lexam/dialog/PopupTest;->popup:Landroid/widget/PopupWindow;

    .line 22
    const v2, 0x7f0c0026

    invoke-virtual {p0, v2}, Lexam/dialog/PopupTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 23
    .local v1, btnshow:Landroid/widget/Button;
    new-instance v2, Lexam/dialog/PopupTest$1;

    invoke-direct {v2, p0, v1}, Lexam/dialog/PopupTest$1;-><init>(Lexam/dialog/PopupTest;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, p0, Lexam/dialog/PopupTest;->popupview:Landroid/view/View;

    const v3, 0x7f0c0025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, btnclose:Landroid/widget/Button;
    new-instance v2, Lexam/dialog/PopupTest$2;

    invoke-direct {v2, p0}, Lexam/dialog/PopupTest$2;-><init>(Lexam/dialog/PopupTest;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method
