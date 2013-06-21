.class Lorg/appcelerator/titanium/view/TiUIView$2;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$detector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$detector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 756
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 757
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 758
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 759
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 760
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 761
    .local v1, inRect:Z
    if-nez v1, :cond_1

    .line 762
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$100()Ljava/util/HashMap;

    move-result-object v3

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v5, p2}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    .line 770
    .end local v1           #inRect:Z
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v0

    .line 764
    .restart local v1       #inRect:Z
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v5, p2}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    goto :goto_0

    .line 767
    .end local v1           #inRect:Z
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v4, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    #calls: Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v5, p2}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    goto :goto_0
.end method
