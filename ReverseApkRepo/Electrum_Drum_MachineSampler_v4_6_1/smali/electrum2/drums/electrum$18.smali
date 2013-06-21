.class Lelectrum2/drums/electrum$18;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$18;->this$0:Lelectrum2/drums/electrum;

    .line 2578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v2, 0x1

    .line 2581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2583
    iget-object v0, p0, Lelectrum2/drums/electrum$18;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->stopbutton:Landroid/widget/ImageView;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2588
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2590
    iget-object v0, p0, Lelectrum2/drums/electrum$18;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->stopbutton:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2594
    iget-object v0, p0, Lelectrum2/drums/electrum$18;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v0}, Lelectrum2/drums/electrum;->StopPlaying()V

    .line 2601
    :cond_1
    return v2
.end method
