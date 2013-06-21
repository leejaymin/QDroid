.class public Lti/modules/titanium/ui/ToolbarProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ToolbarProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 25
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    .line 30
    const-string v4, "Toolbar"

    const-string v5, "Not implemented on Android yet. Placeholder proxy."

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v3, Lti/modules/titanium/ui/widget/TiView;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/TiView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 32
    .local v3, v:Lti/modules/titanium/ui/widget/TiView;
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 33
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 34
    .local v2, options:Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "backgroundColor"

    const-string v5, "red"

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v4, "color"

    const-string v5, "white"

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v4, "width"

    const-string v5, "auto"

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v4, "top"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v4, "bottom"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "text"

    const-string v5, "Not yet implemented for Android."

    invoke-virtual {v2, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lti/modules/titanium/ui/LabelProxy;

    invoke-virtual {p0}, Lti/modules/titanium/ui/ToolbarProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-direct {v1, v4}, Lti/modules/titanium/ui/LabelProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 41
    .local v1, lp:Lti/modules/titanium/ui/LabelProxy;
    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/LabelProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 42
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/LabelProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 43
    .local v0, lf:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1}, Lti/modules/titanium/ui/LabelProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 44
    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/TiView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 45
    return-object v3
.end method
