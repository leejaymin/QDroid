.class public Lti/modules/titanium/ui/LabelProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "LabelProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 23
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 34
    new-instance v0, Lti/modules/titanium/ui/widget/TiUILabel;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUILabel;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 28
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "text"

    const-string v2, "textid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-object v0
.end method