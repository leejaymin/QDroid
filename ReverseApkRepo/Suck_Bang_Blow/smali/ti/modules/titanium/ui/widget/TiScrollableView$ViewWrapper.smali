.class Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
.super Landroid/widget/FrameLayout;
.source "TiScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiScrollableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewWrapper"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiScrollableView;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "position"

    .prologue
    .line 64
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    .line 65
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput p3, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->position:I

    .line 67
    return-void
.end method

.method static synthetic access$102(Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->position:I

    return p1
.end method


# virtual methods
.method public doAttachView()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->view:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 74
    const-string v0, "TiUIScrollableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------------- CHILD COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public doDetachView()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->removeView(Landroid/view/View;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->view:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 85
    :cond_0
    return-void
.end method
