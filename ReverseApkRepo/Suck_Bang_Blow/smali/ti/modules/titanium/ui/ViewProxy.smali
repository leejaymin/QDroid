.class public Lti/modules/titanium/ui/ViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ViewProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 26
    new-instance v0, Lti/modules/titanium/ui/widget/TiView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 27
    .local v0, view:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v1

    iput-boolean v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 28
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v1

    iput-boolean v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 29
    return-object v0
.end method
