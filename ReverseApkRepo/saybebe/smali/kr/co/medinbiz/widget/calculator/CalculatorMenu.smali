.class public Lkr/co/medinbiz/widget/calculator/CalculatorMenu;
.super Lkr/co/medinbiz/widget/calculator/CalculatorCommon;
.source "CalculatorMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorCommon;-><init>()V

    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->mContext:Landroid/content/Context;

    .line 17
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->mContext:Landroid/content/Context;

    .line 18
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 20
    sget v1, Lkr/co/medinbiz/R$layout;->calculator_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->widget:Landroid/view/View;

    .line 25
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->delivery:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->bmi:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void

    .line 22
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->calculator:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->widget:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 37
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->delivery:I

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->setDeliveryWidget()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->height:I

    if-ne v0, v1, :cond_2

    .line 40
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->setHeightWidget()V

    goto :goto_0

    .line 41
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->bmi:I

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorMenu;->setBmiWidget()V

    goto :goto_0
.end method
