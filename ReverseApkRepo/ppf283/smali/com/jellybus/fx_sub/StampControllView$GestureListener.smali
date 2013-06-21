.class Lcom/jellybus/fx_sub/StampControllView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StampControllView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/StampControllView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/StampControllView;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/StampControllView;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/jellybus/fx_sub/StampControllView$GestureListener;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 697
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 699
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView$GestureListener;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    neg-float v1, p3

    neg-float v2, p4

    #calls: Lcom/jellybus/fx_sub/StampControllView;->touch_move(FF)V
    invoke-static {v0, v1, v2}, Lcom/jellybus/fx_sub/StampControllView;->access$9(Lcom/jellybus/fx_sub/StampControllView;FF)V

    .line 700
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView$GestureListener;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 701
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
