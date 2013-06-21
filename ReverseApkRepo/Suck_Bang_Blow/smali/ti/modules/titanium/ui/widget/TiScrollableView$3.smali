.class Lti/modules/titanium/ui/widget/TiScrollableView$3;
.super Ljava/lang/Object;
.source "TiScrollableView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiScrollableView;-><init>(Lti/modules/titanium/ui/ScrollableViewProxy;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiScrollableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiScrollableView;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$3;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 175
    :cond_0
    invoke-static {}, Lti/modules/titanium/ui/widget/TiScrollableView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "TiUIScrollableView"

    const-string v1, "FLING IT"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 180
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$3;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doMoveNext()V

    .line 185
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$3;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doMovePrevious()V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 190
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 199
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method
