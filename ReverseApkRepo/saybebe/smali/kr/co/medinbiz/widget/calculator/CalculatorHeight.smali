.class public Lkr/co/medinbiz/widget/calculator/CalculatorHeight;
.super Ljava/lang/Object;
.source "CalculatorHeight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private father:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mather:Landroid/widget/EditText;

.field private men:Landroid/widget/RadioButton;

.field private result:Landroid/widget/TextView;

.field private sex:Landroid/widget/RadioGroup;

.field private widget:Landroid/view/View;

.field private woman:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mContext:Landroid/content/Context;

    .line 29
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 30
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 31
    sget v1, Lkr/co/medinbiz/R$layout;->height_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    .line 36
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->result:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->sex:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->sex:Landroid/widget/RadioGroup;

    .line 38
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->men:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->men:Landroid/widget/RadioButton;

    .line 39
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->wooman:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->woman:Landroid/widget/RadioButton;

    .line 41
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->father_height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->father:Landroid/widget/EditText;

    .line 42
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->mather_height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mather:Landroid/widget/EditText;

    .line 44
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->again:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->cal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void

    .line 33
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->height:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method private calculator()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 63
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->father:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->father:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, mMen:I
    :goto_0
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mather:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mather:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, mWoman:I
    :goto_1
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->sex:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 66
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->men:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    add-int v3, v0, v1

    add-int/lit8 v3, v3, 0xd

    div-int/lit8 v0, v3, 0x2

    .line 69
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->result:Landroid/widget/TextView;

    iget-object v4, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->calculator_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    :goto_2
    return-void

    .end local v0           #mMen:I
    .end local v1           #mWoman:I
    :cond_1
    move v0, v2

    .line 63
    goto :goto_0

    .restart local v0       #mMen:I
    :cond_2
    move v1, v2

    .line 64
    goto :goto_1

    .line 70
    .restart local v1       #mWoman:I
    :cond_3
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->woman:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    add-int v3, v0, v1

    add-int/lit8 v3, v3, -0xd

    div-int/lit8 v1, v3, 0x2

    .line 73
    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->result:Landroid/widget/TextView;

    iget-object v4, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->calculator_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 76
    :cond_4
    iget-object v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lkr/co/medinbiz/R$string;->calculator_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->sex:Landroid/widget/RadioGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 82
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->father:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->mather:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->result:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 55
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->again:I

    if-ne v0, v1, :cond_1

    .line 56
    invoke-direct {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->init()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->cal:I

    if-ne v0, v1, :cond_0

    .line 58
    invoke-direct {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorHeight;->calculator()V

    goto :goto_0
.end method
