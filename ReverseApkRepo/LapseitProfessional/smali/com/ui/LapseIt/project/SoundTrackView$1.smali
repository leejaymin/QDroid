.class Lcom/ui/LapseIt/project/SoundTrackView$1;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$1;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$1;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$1;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 270
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$1;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$1(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$1;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #calls: Lcom/ui/LapseIt/project/SoundTrackView;->playHandler()V
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$2(Lcom/ui/LapseIt/project/SoundTrackView;)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$1;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #calls: Lcom/ui/LapseIt/project/SoundTrackView;->stopHandler()V
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$3(Lcom/ui/LapseIt/project/SoundTrackView;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x7f0b008a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
