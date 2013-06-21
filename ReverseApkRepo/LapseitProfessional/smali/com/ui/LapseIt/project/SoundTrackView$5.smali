.class Lcom/ui/LapseIt/project/SoundTrackView$5;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/SoundTrackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/SoundTrackView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$5;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 599
    const-string v0, "trace"

    const-string v1, "Seeking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$5;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 604
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$5;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #calls: Lcom/ui/LapseIt/project/SoundTrackView;->updateDurationInfo()V
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$9(Lcom/ui/LapseIt/project/SoundTrackView;)V

    .line 605
    return-void
.end method
