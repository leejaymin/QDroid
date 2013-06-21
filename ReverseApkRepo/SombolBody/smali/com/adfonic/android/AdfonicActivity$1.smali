.class Lcom/adfonic/android/AdfonicActivity$1;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicActivity;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$1;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$1;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #calls: Lcom/adfonic/android/AdfonicActivity;->hasVideoFinishedPlaying()Z
    invoke-static {v1}, Lcom/adfonic/android/AdfonicActivity;->access$000(Lcom/adfonic/android/AdfonicActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$1;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #getter for: Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/adfonic/android/AdfonicActivity;->access$100(Lcom/adfonic/android/AdfonicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/adfonic/android/utils/Log;->errorLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop playback error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
