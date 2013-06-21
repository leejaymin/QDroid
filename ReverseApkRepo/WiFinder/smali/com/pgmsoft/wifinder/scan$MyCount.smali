.class public Lcom/pgmsoft/wifinder/scan$MyCount;
.super Landroid/os/CountDownTimer;
.source "scan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgmsoft/wifinder/scan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;


# direct methods
.method public constructor <init>(Lcom/pgmsoft/wifinder/scan;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 1223
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1224
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->newScan(Z)V
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$27(Lcom/pgmsoft/wifinder/scan;Z)V

    .line 1233
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan$MyCount;->cancel()V

    .line 1234
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1235
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    new-instance v0, Lcom/pgmsoft/wifinder/scan$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->counter_base:J
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$28(Lcom/pgmsoft/wifinder/scan;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 1236
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan$MyCount;->start()Landroid/os/CountDownTimer;

    .line 1237
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter "millisUntilFinished"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J
    invoke-static {v0, p1, p2}, Lcom/pgmsoft/wifinder/scan;->access$25(Lcom/pgmsoft/wifinder/scan;J)V

    .line 1228
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pgmsoft/wifinder/scan;->access$26(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$MyCount;->this$0:Lcom/pgmsoft/wifinder/scan;

    const v2, 0x7f04000b

    invoke-virtual {v1, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    return-void
.end method
