.class Lorg/appcelerator/titanium/view/TiUIView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TiUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 740
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "doubletap"

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v4, p1}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v1

    .line 741
    .local v1, handledTap:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "dblclick"

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v4, p1}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    .line 742
    .local v0, handledClick:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 747
    const-string v2, "TiUIView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAP, TAP, TAP on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, v4, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "singletap"

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v4, p1}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v1

    .line 749
    .local v1, handledTap:Z
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v2, v2, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "click"

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView$1;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v4, p1}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    .line 750
    .local v0, handledClick:Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
