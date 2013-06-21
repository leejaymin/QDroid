.class Lcom/wareone/tappmt/Chart$1;
.super Ljava/lang/Object;
.source "Chart.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Chart;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Chart;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Chart;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 200
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$2(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne p2, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #calls: Lcom/wareone/tappmt/Chart;->setBeginDate()V
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$3(Lcom/wareone/tappmt/Chart;)V

    .line 219
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 225
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    #setter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v2, v3}, Lcom/wareone/tappmt/Chart;->access$4(Lcom/wareone/tappmt/Chart;Ljava/util/Calendar;)V

    .line 206
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->m_due:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$2(Lcom/wareone/tappmt/Chart;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_1
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 213
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$6(Lcom/wareone/tappmt/Chart;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 214
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 215
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->m_range:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$6(Lcom/wareone/tappmt/Chart;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 217
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    invoke-virtual {v2}, Lcom/wareone/tappmt/Chart;->_refresh()V

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 210
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/wareone/tappmt/Chart$1;->this$0:Lcom/wareone/tappmt/Chart;

    #getter for: Lcom/wareone/tappmt/Chart;->curDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/wareone/tappmt/Chart;->access$5(Lcom/wareone/tappmt/Chart;)Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1
.end method
