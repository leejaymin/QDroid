.class public Lkr/co/medinbiz/widget/calculator/CalculatorMain;
.super Lkr/co/medinbiz/widget/calculator/CalculatorCommon;
.source "CalculatorMain.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "context"
    .parameter "main"

    .prologue
    .line 9
    invoke-direct {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;-><init>()V

    .line 10
    iput-object p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->mContext:Landroid/content/Context;

    .line 11
    sput-object p2, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->MAINVIEW:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->setMainWidget()V

    .line 13
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 16
    sget v0, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->CHILDCOUNT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorMain;->setMainWidget()V

    goto :goto_0
.end method
