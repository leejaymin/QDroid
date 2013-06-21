.class Lcom/madvil/ms/MusicToPhoneActivity$17;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/madvil/ms/MusicToPhoneActivity$17;)Lcom/madvil/ms/MusicToPhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 612
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$15(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 620
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$16(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Pending..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$17(Lcom/madvil/ms/MusicToPhoneActivity;Landroid/media/MediaPlayer;)V

    .line 622
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$12(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleSong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/madvil/core/SimpleSong;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$17$1;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$17$1;-><init>(Lcom/madvil/ms/MusicToPhoneActivity$17;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 633
    new-instance v0, Lcom/madvil/ms/MusicToPhoneActivity$17$2;

    invoke-direct {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity$17$2;-><init>(Lcom/madvil/ms/MusicToPhoneActivity$17;)V

    .line 651
    invoke-virtual {v0}, Lcom/madvil/ms/MusicToPhoneActivity$17$2;->start()V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->started:Z
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$20(Lcom/madvil/ms/MusicToPhoneActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 655
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$15(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 656
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$16(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Paused"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 659
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$16(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Playing"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerIV:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$15(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
