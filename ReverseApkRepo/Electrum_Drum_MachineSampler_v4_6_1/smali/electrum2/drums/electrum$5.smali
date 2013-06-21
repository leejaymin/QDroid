.class Lelectrum2/drums/electrum$5;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$5;->this$0:Lelectrum2/drums/electrum;

    .line 1514
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1527
    iget-object v0, p0, Lelectrum2/drums/electrum$5;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->soundView:Landroid/widget/ImageView;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1529
    iget-object v0, p0, Lelectrum2/drums/electrum$5;->this$0:Lelectrum2/drums/electrum;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lelectrum2/drums/electrum;->wasLongPressed:Z

    .line 1532
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1520
    return-void
.end method
