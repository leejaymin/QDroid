.class public Lexam/Layout/CodeLayout2;
.super Landroid/app/Activity;
.source "CodeLayout2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v3, 0x7f030026

    invoke-virtual {p0, v3}, Lexam/Layout/CodeLayout2;->setContentView(I)V

    .line 13
    const v3, 0x7f0c003f

    invoke-virtual {p0, v3}, Lexam/Layout/CodeLayout2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 14
    .local v2, MyLinear:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    const v3, 0x7f0c0040

    invoke-virtual {p0, v3}, Lexam/Layout/CodeLayout2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 17
    .local v0, MyBtn:Landroid/widget/Button;
    const/high16 v3, 0x4220

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 19
    const v3, 0x7f0c0042

    invoke-virtual {p0, v3}, Lexam/Layout/CodeLayout2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 20
    .local v1, MyEdit:Landroid/widget/EditText;
    const v3, -0xff0100

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 21
    return-void
.end method
