.class Lelectrum2/drums/livemode$5;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/livemode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/livemode;


# direct methods
.method constructor <init>(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/livemode$5;->this$0:Lelectrum2/drums/livemode;

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 693
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 695
    sget-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lelectrum2/drums/livemode$5;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->playbutton:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 709
    sget-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v0, :cond_1

    .line 711
    sput-boolean v2, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 713
    iget-object v0, p0, Lelectrum2/drums/livemode$5;->this$0:Lelectrum2/drums/livemode;

    iput-boolean v2, v0, Lelectrum2/drums/livemode;->WatchPlaying:Z

    .line 715
    iget-object v0, p0, Lelectrum2/drums/livemode$5;->this$0:Lelectrum2/drums/livemode;

    const/4 v1, -0x1

    iput v1, v0, Lelectrum2/drums/livemode;->oldpattern:I

    .line 717
    iget-object v0, p0, Lelectrum2/drums/livemode$5;->this$0:Lelectrum2/drums/livemode;

    iget v0, v0, Lelectrum2/drums/livemode;->currpattern:I

    sput v0, Lelectrum2/drums/globalSounds;->playingpattern:I

    .line 719
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    iput-boolean v3, v0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 720
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    iput-boolean v3, v0, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 724
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 725
    sget-object v0, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->CreateSound()V

    .line 729
    iget-object v0, p0, Lelectrum2/drums/livemode$5;->this$0:Lelectrum2/drums/livemode;

    invoke-virtual {v0}, Lelectrum2/drums/livemode;->StartMonitor()V

    .line 738
    :cond_1
    return v2
.end method
