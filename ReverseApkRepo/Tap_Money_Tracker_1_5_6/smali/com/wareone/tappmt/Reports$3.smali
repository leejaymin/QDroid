.class Lcom/wareone/tappmt/Reports$3;
.super Ljava/lang/Object;
.source "Reports.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reports;->setBeginDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Reports;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reports;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reports$3;->this$0:Lcom/wareone/tappmt/Reports;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 319
    .local v0, curDate:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 321
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/wareone/tappmt/Reports$3;->this$0:Lcom/wareone/tappmt/Reports;

    #getter for: Lcom/wareone/tappmt/Reports;->m_range:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/Reports;->access$3(Lcom/wareone/tappmt/Reports;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 324
    iget-object v2, p0, Lcom/wareone/tappmt/Reports$3;->this$0:Lcom/wareone/tappmt/Reports;

    #calls: Lcom/wareone/tappmt/Reports;->setEndDate()V
    invoke-static {v2}, Lcom/wareone/tappmt/Reports;->access$9(Lcom/wareone/tappmt/Reports;)V

    .line 325
    return-void
.end method
