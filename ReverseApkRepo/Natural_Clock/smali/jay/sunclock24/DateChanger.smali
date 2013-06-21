.class public Ljay/sunclock24/DateChanger;
.super Landroid/app/Activity;
.source "DateChanger.java"


# static fields
.field static d:Ljava/util/Date;


# instance fields
.field button:Landroid/widget/Button;

.field datep:Landroid/widget/DatePicker;

.field day:I

.field intent:Landroid/content/Intent;

.field month:I

.field year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Ljay/sunclock24/DateChanger;->d:Ljava/util/Date;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Ljay/sunclock24/DateChanger;->setContentView(I)V

    .line 40
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Ljay/sunclock24/DateChanger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    iput-object v0, p0, Ljay/sunclock24/DateChanger;->datep:Landroid/widget/DatePicker;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljay/sunclock24/SunClock24;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ljay/sunclock24/DateChanger;->intent:Landroid/content/Intent;

    .line 44
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Ljay/sunclock24/DateChanger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ljay/sunclock24/DateChanger;->button:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Ljay/sunclock24/DateChanger;->button:Landroid/widget/Button;

    new-instance v1, Ljay/sunclock24/DateChanger$1;

    invoke-direct {v1, p0}, Ljay/sunclock24/DateChanger$1;-><init>(Ljay/sunclock24/DateChanger;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method
