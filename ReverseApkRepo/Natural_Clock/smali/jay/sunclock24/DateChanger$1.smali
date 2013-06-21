.class Ljay/sunclock24/DateChanger$1;
.super Ljava/lang/Object;
.source "DateChanger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljay/sunclock24/DateChanger;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljay/sunclock24/DateChanger;


# direct methods
.method constructor <init>(Ljay/sunclock24/DateChanger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, v1, Ljay/sunclock24/DateChanger;->datep:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    iput v1, v0, Ljay/sunclock24/DateChanger;->day:I

    .line 53
    iget-object v0, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, v1, Ljay/sunclock24/DateChanger;->datep:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iput v1, v0, Ljay/sunclock24/DateChanger;->month:I

    .line 54
    iget-object v0, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, v1, Ljay/sunclock24/DateChanger;->datep:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iput v1, v0, Ljay/sunclock24/DateChanger;->year:I

    .line 58
    sget-object v0, Ljay/sunclock24/DateChanger;->d:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget v1, v1, Ljay/sunclock24/DateChanger;->day:I

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 59
    sget-object v0, Ljay/sunclock24/DateChanger;->d:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget v1, v1, Ljay/sunclock24/DateChanger;->month:I

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMonth(I)V

    .line 60
    sget-object v0, Ljay/sunclock24/DateChanger;->d:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget v1, v1, Ljay/sunclock24/DateChanger;->year:I

    const/16 v2, 0x76c

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 64
    sget-object v0, Ljay/sunclock24/DateChanger;->d:Ljava/util/Date;

    sput-object v0, Ljay/sunclock24/SunClock24;->in:Ljava/util/Date;

    .line 70
    iget-object v0, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, p0, Ljay/sunclock24/DateChanger$1;->this$0:Ljay/sunclock24/DateChanger;

    iget-object v1, v1, Ljay/sunclock24/DateChanger;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljay/sunclock24/DateChanger;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
