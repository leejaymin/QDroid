.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;
.super Ljava/lang/Object;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mProgress:I

.field final synthetic this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;


# direct methods
.method constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 460
    if-eqz p3, :cond_0

    .line 461
    iput p2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;->mProgress:I

    .line 463
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 455
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$3(Z)V

    .line 456
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 448
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;->mProgress:I

    int-to-double v1, v1

    #setter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v0, v1, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$2(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;D)V

    .line 450
    iget v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;->mProgress:I

    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeSeekToPos(I)V

    .line 452
    :cond_0
    return-void
.end method
