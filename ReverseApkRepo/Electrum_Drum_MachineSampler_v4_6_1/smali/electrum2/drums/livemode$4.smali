.class Lelectrum2/drums/livemode$4;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$4;->this$0:Lelectrum2/drums/livemode;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 623
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 625
    sget-boolean v1, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v1, :cond_0

    .line 627
    iget-object v1, p0, Lelectrum2/drums/livemode$4;->this$0:Lelectrum2/drums/livemode;

    iget-object v1, v1, Lelectrum2/drums/livemode;->sequencerbutton:Landroid/widget/ImageView;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 637
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 640
    sget-boolean v1, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-nez v1, :cond_1

    .line 642
    sput-boolean v3, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 644
    iget-object v1, p0, Lelectrum2/drums/livemode$4;->this$0:Lelectrum2/drums/livemode;

    iput-boolean v4, v1, Lelectrum2/drums/livemode;->WatchPlaying:Z

    .line 647
    sget-object v1, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    iput-boolean v4, v1, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 648
    sget-object v1, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    iput-boolean v3, v1, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 652
    new-instance v2, Ljava/lang/Integer;

    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    sget v3, Lelectrum2/drums/livemode;->currselection:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lelectrum2/drums/globalSounds;->nextpattern:I

    .line 654
    sput-boolean v4, Lelectrum2/drums/electrum;->sequenceplayedfromexternal:Z

    .line 655
    sget v1, Lelectrum2/drums/livemode;->currselection:I

    sput v1, Lelectrum2/drums/electrum;->externalsequencepatternpos:I

    .line 660
    sget-object v1, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    invoke-virtual {v1}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 661
    sget-object v1, Lelectrum2/drums/globalSounds;->MainScreen:Lelectrum2/drums/electrum;

    invoke-virtual {v1}, Lelectrum2/drums/electrum;->CreateSound()V

    .line 669
    iget-object v1, p0, Lelectrum2/drums/livemode$4;->this$0:Lelectrum2/drums/livemode;

    invoke-virtual {v1}, Lelectrum2/drums/livemode;->StartSequenceMonitor()V

    .line 684
    :cond_1
    :goto_0
    return v4

    .line 674
    :cond_2
    iget-object v1, p0, Lelectrum2/drums/livemode$4;->this$0:Lelectrum2/drums/livemode;

    const-string v2, "There is no pattern sequence to play!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 677
    .local v0, temptoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
