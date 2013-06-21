.class Lelectrum2/drums/electrum$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "electrum.java"


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
    iput-object p1, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    .line 1463
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1479
    sget-boolean v0, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->soundid:I

    #calls: Lelectrum2/drums/electrum;->SetSelectedSound(I)V
    invoke-static {v0, v1}, Lelectrum2/drums/electrum;->access$0(Lelectrum2/drums/electrum;I)V

    .line 1483
    iget-object v0, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v2, v0, Lelectrum2/drums/electrum;->wasMuted:Z

    .line 1485
    iget-object v0, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->soundid:I

    invoke-virtual {v0, v1}, Lelectrum2/drums/electrum;->DisplaySelectedSound(I)V

    .line 1489
    :cond_0
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1503
    iget-object v0, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundView:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1506
    iget-object v0, p0, Lelectrum2/drums/electrum$4;->this$0:Lelectrum2/drums/electrum;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lelectrum2/drums/electrum;->wasLongPressed:Z

    .line 1509
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1469
    return-void
.end method
