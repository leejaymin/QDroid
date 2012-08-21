.class public Lcom/example/aatg/tc/TemperatureConverterActivity;
.super Landroid/app/Activity;
.source "TemperatureConverterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;
    }
.end annotation


# instance fields
.field private mCelsius:Lcom/example/aatg/tc/EditNumber;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mErrorButton:Landroid/widget/Button;

.field private mFahrenheit:Lcom/example/aatg/tc/EditNumber;

.field private mString:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    new-instance v0, Lcom/example/aatg/tc/TemperatureConverterActivity$1;

    invoke-direct {v0, p0}, Lcom/example/aatg/tc/TemperatureConverterActivity$1;-><init>(Lcom/example/aatg/tc/TemperatureConverterActivity;)V

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/example/aatg/tc/TemperatureConverterActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mErrorButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/aatg/tc/TemperatureConverterActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 101
    iget v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mString:I

    return v0
.end method

.method static synthetic access$2(Lcom/example/aatg/tc/TemperatureConverterActivity;)Lcom/example/aatg/tc/EditNumber;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mCelsius:Lcom/example/aatg/tc/EditNumber;

    return-object v0
.end method

.method static synthetic access$3(Lcom/example/aatg/tc/TemperatureConverterActivity;)Lcom/example/aatg/tc/EditNumber;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mFahrenheit:Lcom/example/aatg/tc/EditNumber;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/example/aatg/tc/TemperatureConverterActivity;->setContentView(I)V

    .line 109
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/example/aatg/tc/TemperatureConverterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/aatg/tc/EditNumber;

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mCelsius:Lcom/example/aatg/tc/EditNumber;

    .line 110
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/example/aatg/tc/TemperatureConverterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/example/aatg/tc/EditNumber;

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mFahrenheit:Lcom/example/aatg/tc/EditNumber;

    .line 111
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/example/aatg/tc/TemperatureConverterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mErrorButton:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mCelsius:Lcom/example/aatg/tc/EditNumber;

    new-instance v1, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;

    sget-object v2, Lcom/example/aatg/tc/TemperatureConverter$OP;->C2F:Lcom/example/aatg/tc/TemperatureConverter$OP;

    invoke-direct {v1, p0, v2}, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;-><init>(Lcom/example/aatg/tc/TemperatureConverterActivity;Lcom/example/aatg/tc/TemperatureConverter$OP;)V

    invoke-virtual {v0, v1}, Lcom/example/aatg/tc/EditNumber;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mFahrenheit:Lcom/example/aatg/tc/EditNumber;

    new-instance v1, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;

    sget-object v2, Lcom/example/aatg/tc/TemperatureConverter$OP;->F2C:Lcom/example/aatg/tc/TemperatureConverter$OP;

    invoke-direct {v1, p0, v2}, Lcom/example/aatg/tc/TemperatureConverterActivity$TemperatureChangedWatcher;-><init>(Lcom/example/aatg/tc/TemperatureConverterActivity;Lcom/example/aatg/tc/TemperatureConverter$OP;)V

    invoke-virtual {v0, v1}, Lcom/example/aatg/tc/EditNumber;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mErrorButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const/16 v0, 0xa

    div-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/example/aatg/tc/TemperatureConverterActivity;->mString:I

    .line 118
    return-void
.end method
