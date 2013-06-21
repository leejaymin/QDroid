.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$8;
.super Ljava/lang/Object;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->audioStartThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$20()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 817
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeRunAudioThread()V

    .line 818
    return-void
.end method
