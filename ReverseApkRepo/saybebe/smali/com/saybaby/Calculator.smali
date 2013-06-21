.class public Lcom/saybaby/Calculator;
.super Lkr/co/medinbiz/CommonActivity;
.source "Calculator.java"


# instance fields
.field private widget:Lkr/co/medinbiz/widget/calculator/CalculatorMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/saybaby/Calculator;->widget:Lkr/co/medinbiz/widget/calculator/CalculatorMain;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->onBackPressed()V

    .line 29
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lkr/co/medinbiz/widget/calculator/CalculatorMain;

    iget-object v1, p0, Lcom/saybaby/Calculator;->mainview:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1}, Lkr/co/medinbiz/widget/calculator/CalculatorMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/saybaby/Calculator;->widget:Lkr/co/medinbiz/widget/calculator/CalculatorMain;

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 17
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 18
    return-void
.end method
