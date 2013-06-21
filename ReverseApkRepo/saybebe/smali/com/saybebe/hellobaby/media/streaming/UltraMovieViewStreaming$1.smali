.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$1;
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
.field final synthetic this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;


# direct methods
.method constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$1;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$1;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$0(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 440
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 441
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 435
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 432
    return-void
.end method
