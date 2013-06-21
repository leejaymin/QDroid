.class Lelectrum2/drums/electrum$17;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    .line 2527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2532
    iget-object v0, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->playbutton:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2537
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2539
    iget-object v0, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->playbutton:Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2541
    iget-object v0, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v2, v0, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 2556
    iget-object v0, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v2, v0, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 2558
    sput-boolean v2, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 2559
    sput-boolean v2, Lelectrum2/drums/electrum;->sequenceplayedfromexternal:Z

    .line 2560
    sput v2, Lelectrum2/drums/electrum;->externalsequencepatternpos:I

    .line 2563
    iget-object v0, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 2564
    iget-object v0, p0, Lelectrum2/drums/electrum$17;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->CreateSound()V

    .line 2573
    :cond_1
    return v3
.end method
