.class Lelectrum2/drums/electrum$15;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    .line 2432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2435
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2437
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->playallbutton:Landroid/widget/ImageView;

    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2442
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 2444
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->playallbutton:Landroid/widget/ImageView;

    const v2, 0x7f02007a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2447
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v4, v1, Lelectrum2/drums/electrum;->PatternSequenceMode:Z

    .line 2450
    sget-object v1, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2452
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    const-string v2, "No pattern sequence data to play!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2454
    .local v0, temptoast1:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2482
    .end local v0           #temptoast1:Landroid/widget/Toast;
    :cond_1
    :goto_0
    return v4

    .line 2460
    :cond_2
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v3, v1, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 2462
    sput-boolean v3, Lelectrum2/drums/electrum;->sequenceplayedfromexternal:Z

    .line 2463
    sput v3, Lelectrum2/drums/electrum;->externalsequencepatternpos:I

    .line 2466
    sput-boolean v3, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 2469
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v1}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 2470
    iget-object v1, p0, Lelectrum2/drums/electrum$15;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v1}, Lelectrum2/drums/electrum;->CreateSound()V

    goto :goto_0
.end method
