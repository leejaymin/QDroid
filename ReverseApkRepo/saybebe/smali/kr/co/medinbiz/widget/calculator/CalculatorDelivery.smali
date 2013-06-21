.class public Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;
.super Ljava/lang/Object;
.source "CalculatorDelivery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private date_text:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private result:Landroid/widget/TextView;

.field private temp_day:I

.field private temp_month:I

.field private temp_year:I

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery$1;-><init>(Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 30
    iput-object p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->mContext:Landroid/content/Context;

    .line 31
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 33
    sget v1, Lkr/co/medinbiz/R$layout;->delivery_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    .line 38
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    .line 39
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->date_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->date_text:Landroid/widget/TextView;

    .line 40
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->result:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->search:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->again:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->cal:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void

    .line 35
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->delivery:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->temp_year:I

    return-void
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->temp_month:I

    return-void
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->temp_day:I

    return-void
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->date_text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x5

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 66
    .local v6, id:I
    sget v0, Lkr/co/medinbiz/R$id;->search:I

    if-ne v6, v0, :cond_1

    .line 67
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 68
    iget-object v5, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 67
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 68
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget v0, Lkr/co/medinbiz/R$id;->again:I

    if-ne v6, v0, :cond_2

    .line 70
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->date_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->result:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_2
    sget v0, Lkr/co/medinbiz/R$id;->cal:I

    if-ne v6, v0, :cond_0

    .line 73
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->date_text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 74
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    const/16 v1, 0x118

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 75
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->result:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->calculator_delivery_date:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 77
    const-string v4, "yyyy.MM.dd"

    iget-object v5, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 76
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->calendar:Ljava/util/Calendar;

    iget v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->temp_year:I

    iget v2, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->temp_month:I

    iget v3, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->temp_day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lkr/co/medinbiz/widget/calculator/CalculatorDelivery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->calculator_delivery_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    const/16 v2, 0x3e8

    .line 80
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
