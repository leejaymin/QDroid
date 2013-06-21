.class public Lkr/co/medinbiz/widget/calculator/CalculatorCommon;
.super Ljava/lang/Object;
.source "CalculatorCommon.java"


# static fields
.field public static CHILDCOUNT:I

.field public static MAINVIEW:Landroid/widget/LinearLayout;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected setBmiWidget()V
    .locals 3

    .prologue
    .line 21
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 22
    new-instance v1, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;

    iget-object v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->CHILDCOUNT:I

    .line 25
    return-void
.end method

.method protected setDeliveryWidget()V
    .locals 3

    .prologue
    .line 28
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 29
    new-instance v1, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;

    iget-object v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->CHILDCOUNT:I

    .line 32
    return-void
.end method

.method protected setHeightWidget()V
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 36
    new-instance v1, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;

    iget-object v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->CHILDCOUNT:I

    .line 39
    return-void
.end method

.method protected setMainWidget()V
    .locals 3

    .prologue
    .line 14
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 15
    new-instance v1, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;

    iget-object v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 16
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    const/4 v1, 0x1

    sput v1, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;->CHILDCOUNT:I

    .line 18
    return-void
.end method
