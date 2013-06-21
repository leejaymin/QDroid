.class Lcom/wareone/tappmt/Transaction$14$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Transaction$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Transaction$14;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$14$1;->this$1:Lcom/wareone/tappmt/Transaction$14;

    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 1594
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$16()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 1595
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1596
    .local v2, today:Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1599
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$14$1;->this$1:Lcom/wareone/tappmt/Transaction$14;

    #getter for: Lcom/wareone/tappmt/Transaction$14;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction$14;->access$0(Lcom/wareone/tappmt/Transaction$14;)Lcom/wareone/tappmt/Transaction;

    move-result-object v3

    const v4, 0x7f0c0018

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/Transaction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1602
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v1, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$16()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1606
    iget-object v3, p0, Lcom/wareone/tappmt/Transaction$14$1;->this$1:Lcom/wareone/tappmt/Transaction$14;

    #getter for: Lcom/wareone/tappmt/Transaction$14;->this$0:Lcom/wareone/tappmt/Transaction;
    invoke-static {v3}, Lcom/wareone/tappmt/Transaction$14;->access$0(Lcom/wareone/tappmt/Transaction$14;)Lcom/wareone/tappmt/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wareone/tappmt/Transaction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    :goto_0
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$3()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "trans_date"

    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$16()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    return-void

    .line 1608
    :cond_0
    invoke-static {}, Lcom/wareone/tappmt/Transaction;->access$16()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
