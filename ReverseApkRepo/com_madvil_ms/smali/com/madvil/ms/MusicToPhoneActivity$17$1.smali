.class Lcom/madvil/ms/MusicToPhoneActivity$17$1;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity$17;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$17$1;->this$1:Lcom/madvil/ms/MusicToPhoneActivity$17;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity$17;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity$17;->access$0(Lcom/madvil/ms/MusicToPhoneActivity$17;)Lcom/madvil/ms/MusicToPhoneActivity;

    move-result-object v0

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPB:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$18(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 629
    return-void
.end method
