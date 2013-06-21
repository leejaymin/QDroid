.class final Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UltraMovieViewStreaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;


# direct methods
.method private constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 147
    const-string v0, "UltraMovieView"

    const-string v2, "onSingleTapConfirmed"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v0, v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->commandHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v2, v2, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z
    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$12(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-virtual {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->slideOutBottomPanel()V

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z
    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$12(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    #setter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z
    invoke-static {v2, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$13(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Z)V

    .line 157
    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-virtual {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->slideInBottomPanel()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_1
.end method
