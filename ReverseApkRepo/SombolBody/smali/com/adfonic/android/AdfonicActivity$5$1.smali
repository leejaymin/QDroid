.class Lcom/adfonic/android/AdfonicActivity$5$1;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity$5;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adfonic/android/AdfonicActivity$5;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$5$1;->this$1:Lcom/adfonic/android/AdfonicActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$5$1;->this$1:Lcom/adfonic/android/AdfonicActivity$5;

    iget-object v1, v1, Lcom/adfonic/android/AdfonicActivity$5;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #getter for: Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/adfonic/android/AdfonicActivity;->access$100(Lcom/adfonic/android/AdfonicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 311
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$5$1;->this$1:Lcom/adfonic/android/AdfonicActivity$5;

    iget-object v1, v1, Lcom/adfonic/android/AdfonicActivity$5;->val$mediaController:Landroid/widget/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    .line 312
    iget-object v1, p0, Lcom/adfonic/android/AdfonicActivity$5$1;->this$1:Lcom/adfonic/android/AdfonicActivity$5;

    iget-object v1, v1, Lcom/adfonic/android/AdfonicActivity$5;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #getter for: Lcom/adfonic/android/AdfonicActivity;->mediaPlayerView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/adfonic/android/AdfonicActivity;->access$100(Lcom/adfonic/android/AdfonicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/adfonic/android/utils/Log;->errorLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
