.class public Lcom/pgmsoft/wifinder/Analyzer$MyCount;
.super Landroid/os/CountDownTimer;
.source "Analyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgmsoft/wifinder/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/Analyzer;


# direct methods
.method public constructor <init>(Lcom/pgmsoft/wifinder/Analyzer;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    .line 61
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 62
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/Analyzer;->managerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 71
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->cancel()V

    .line 72
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    .line 73
    iget-object v6, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    new-instance v0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    const-wide/16 v2, 0x44c

    const-wide/16 v4, 0x64

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/Analyzer$MyCount;-><init>(Lcom/pgmsoft/wifinder/Analyzer;JJ)V

    iput-object v0, v6, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    .line 74
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    iget-object v0, v0, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->start()Landroid/os/CountDownTimer;

    .line 75
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .parameter "millisUntilFinished"

    .prologue
    .line 66
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, secToFinish:Ljava/lang/String;
    return-void
.end method
