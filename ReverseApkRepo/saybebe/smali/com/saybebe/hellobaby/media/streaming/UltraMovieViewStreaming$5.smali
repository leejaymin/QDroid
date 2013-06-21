.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$5;
.super Ljava/util/TimerTask;
.source "UltraMovieViewStreaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$5;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 244
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$5;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-virtual {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->slideOutBottomPanel()V

    .line 247
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$5;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    const/4 v1, 0x0

    #setter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z
    invoke-static {v0, v1}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$13(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Z)V

    .line 249
    return-void
.end method
