.class Lcom/madvil/ms/MusicToPhoneActivity$24;
.super Ljava/lang/Thread;
.source "MusicToPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->updateXmlChart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$24;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1010
    :try_start_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$24;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$24;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->currentChartLink:Ljava/lang/String;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$32(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$24;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$31(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->loadXmlChart(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$24;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->chartUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$33(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    goto :goto_0
.end method
