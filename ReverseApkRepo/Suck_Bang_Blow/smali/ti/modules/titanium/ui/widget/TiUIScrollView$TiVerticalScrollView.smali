.class Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiVerticalScrollView"
.end annotation


# instance fields
.field private layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "arrangement"

    .prologue
    const/4 v2, -0x1

    .line 177
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    .line 178
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->setScrollBarStyle(I)V

    .line 183
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-direct {v1, p1, p2, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    .line 184
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-super {p0, v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 194
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->layout:Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 201
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 202
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "y"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->this$0:Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "scroll"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 205
    return-void
.end method
