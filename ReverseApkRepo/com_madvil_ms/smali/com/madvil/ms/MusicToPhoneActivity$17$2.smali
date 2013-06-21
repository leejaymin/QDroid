.class Lcom/madvil/ms/MusicToPhoneActivity$17$2;
.super Ljava/lang/Thread;
.source "MusicToPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    .line 633
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$17;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$17;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 639
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$17;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$17;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$19(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$17;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$17;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 649
    :goto_1
    return-void

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity$17;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$17;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v1

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$19(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 643
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 647
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
