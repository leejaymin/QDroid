.class Lcom/wareone/tappmt/TapPMT$17;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->setEndDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$17;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 1196
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
    .line 1202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1203
    .local v0, curDate:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 1205
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$17;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/TapPMT;->access$20(Lcom/wareone/tappmt/TapPMT;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1208
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$17;->this$0:Lcom/wareone/tappmt/TapPMT;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$17;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;
    invoke-static {v3}, Lcom/wareone/tappmt/TapPMT;->access$16(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    #setter for: Lcom/wareone/tappmt/TapPMT;->m_due_index:I
    invoke-static {v2, v3}, Lcom/wareone/tappmt/TapPMT;->access$18(Lcom/wareone/tappmt/TapPMT;I)V

    .line 1209
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$17;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v2}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    .line 1210
    return-void
.end method
