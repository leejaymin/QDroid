.class Lelectrum2/drums/livemode$11;
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
    iput-object p1, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    .line 1357
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

    .line 1360
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->stopbutton:Landroid/widget/ImageView;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1367
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1369
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->stopbutton:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1373
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    invoke-virtual {v0}, Lelectrum2/drums/livemode;->StopPlaying()V

    .line 1375
    sput-boolean v2, Lelectrum2/drums/globalSounds;->livemode:Z

    .line 1376
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    iput-boolean v2, v0, Lelectrum2/drums/livemode;->isRecording:Z

    .line 1377
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->recordbutton:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1378
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->playbutton:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1379
    iget-object v0, p0, Lelectrum2/drums/livemode$11;->this$0:Lelectrum2/drums/livemode;

    iget-object v0, v0, Lelectrum2/drums/livemode;->sequencerbutton:Landroid/widget/ImageView;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1388
    :cond_1
    return v3
.end method
