.class Lcom/millennialmedia/android/VideoPlayerActivity$16;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->startServer(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$16;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 1304
    const-string v0, "Video Playing Complete"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$16;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    #getter for: Lcom/millennialmedia/android/VideoPlayerActivity;->showCountdownHud:Z
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$800(Lcom/millennialmedia/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$16;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    #calls: Lcom/millennialmedia/android/VideoPlayerActivity;->hideHud()V
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$900(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$16;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    #getter for: Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$16;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$16;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    #getter for: Lcom/millennialmedia/android/VideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;
    invoke-static {v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1000(Lcom/millennialmedia/android/VideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    #calls: Lcom/millennialmedia/android/VideoPlayerActivity;->videoPlayerOnCompletion(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$1100(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V

    .line 1311
    :cond_1
    return-void
.end method
