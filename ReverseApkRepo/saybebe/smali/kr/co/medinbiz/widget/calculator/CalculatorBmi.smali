.class public Lkr/co/medinbiz/widget/calculator/CalculatorBmi;
.super Ljava/lang/Object;
.source "CalculatorBmi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private after_weight:Landroid/widget/EditText;

.field private befor_weight:Landroid/widget/EditText;

.field private height:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private result:Landroid/widget/TextView;

.field private week:Landroid/widget/EditText;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->mContext:Landroid/content/Context;

    .line 28
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 29
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 30
    sget v1, Lkr/co/medinbiz/R$layout;->bmi_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    .line 35
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->week:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->week:Landroid/widget/EditText;

    .line 36
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->height:Landroid/widget/EditText;

    .line 37
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->befor_weight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->befor_weight:Landroid/widget/EditText;

    .line 38
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->after_weight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->after_weight:Landroid/widget/EditText;

    .line 39
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->result:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->again:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->cal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void

    .line 32
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->bmi:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method private calculator()V
    .locals 18

    .prologue
    .line 60
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v10, "#.##"

    invoke-direct {v2, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, format:Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->week:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->height:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 62
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->befor_weight:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 63
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->after_weight:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->week:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 65
    .local v6, mWeek:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->befor_weight:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 66
    .local v4, mBefor:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->after_weight:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 67
    .local v3, mAfter:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->height:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 69
    .local v5, mHeight:I
    int-to-double v10, v4

    int-to-double v12, v5

    const-wide v14, 0x3f847ae147ae147bL

    mul-double/2addr v12, v14

    int-to-double v14, v5

    const-wide v16, 0x3f847ae147ae147bL

    mul-double v14, v14, v16

    mul-double/2addr v12, v14

    div-double/2addr v10, v12

    double-to-float v9, v10

    .line 70
    .local v9, total:F
    const/4 v1, 0x0

    .line 71
    .local v1, ever:F
    const/4 v8, 0x0

    .line 72
    .local v8, min:I
    const/4 v7, 0x0

    .line 73
    .local v7, max:I
    float-to-double v10, v9

    const-wide v12, 0x4032800000000000L

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    .line 74
    sub-int v10, v3, v4

    int-to-double v10, v10

    int-to-double v12, v6

    const-wide v14, 0x3fdccccccccccccdL

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v1, v10

    .line 75
    add-int/lit8 v8, v4, 0xc

    .line 76
    add-int/lit8 v7, v4, 0x12

    .line 91
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->result:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lkr/co/medinbiz/R$string;->calculator_bmi_result:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 92
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    float-to-double v14, v9

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 91
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v1           #ever:F
    .end local v3           #mAfter:I
    .end local v4           #mBefor:I
    .end local v5           #mHeight:I
    .end local v6           #mWeek:I
    .end local v7           #max:I
    .end local v8           #min:I
    .end local v9           #total:F
    :goto_1
    return-void

    .line 77
    .restart local v1       #ever:F
    .restart local v3       #mAfter:I
    .restart local v4       #mBefor:I
    .restart local v5       #mHeight:I
    .restart local v6       #mWeek:I
    .restart local v7       #max:I
    .restart local v8       #min:I
    .restart local v9       #total:F
    :cond_0
    float-to-double v10, v9

    const-wide v12, 0x4038e66666666666L

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 78
    sub-int v10, v3, v4

    int-to-double v10, v10

    int-to-double v12, v6

    const-wide v14, 0x3fd999999999999aL

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v1, v10

    .line 79
    add-int/lit8 v8, v4, 0xb

    .line 80
    add-int/lit8 v7, v4, 0x10

    goto :goto_0

    .line 81
    :cond_1
    float-to-double v10, v9

    const-wide/high16 v12, 0x403d

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 82
    sub-int v10, v3, v4

    int-to-double v10, v10

    int-to-double v12, v6

    const-wide v14, 0x3fd147ae147ae148L

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v1, v10

    .line 83
    add-int/lit8 v8, v4, 0x7

    .line 84
    add-int/lit8 v7, v4, 0xb

    goto :goto_0

    .line 86
    :cond_2
    sub-int v10, v3, v4

    int-to-double v10, v10

    int-to-double v12, v6

    const-wide v14, 0x3fcd70a3d70a3d71L

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v1, v10

    .line 87
    add-int/lit8 v8, v4, 0x5

    .line 88
    add-int/lit8 v7, v4, 0x9

    goto :goto_0

    .line 95
    .end local v1           #ever:F
    .end local v3           #mAfter:I
    .end local v4           #mBefor:I
    .end local v5           #mHeight:I
    .end local v6           #mWeek:I
    .end local v7           #max:I
    .end local v8           #min:I
    .end local v9           #total:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->mContext:Landroid/content/Context;

    .line 96
    move-object/from16 v0, p0

    iget-object v11, v0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lkr/co/medinbiz/R$string;->calculator_error:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    .line 95
    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 96
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->week:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->height:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->befor_weight:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->after_weight:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->result:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lkr/co/medinbiz/R$id;->again:I

    if-ne v0, v1, :cond_1

    .line 102
    invoke-direct {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->init()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lkr/co/medinbiz/R$id;->cal:I

    if-ne v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lkr/co/medinbiz/widget/calculator/CalculatorBmi;->calculator()V

    goto :goto_0
.end method
