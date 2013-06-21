.class public Lti/modules/titanium/app/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# instance fields
.field protected r:Lorg/appcelerator/titanium/proxy/RProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getR(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/proxy/RProxy;
    .locals 3
    .parameter "invocation"

    .prologue
    .line 20
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lorg/appcelerator/titanium/proxy/RProxy;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/RProxy;-><init>(Lorg/appcelerator/titanium/TiContext;I)V

    iput-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    .line 23
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModule;->r:Lorg/appcelerator/titanium/proxy/RProxy;

    return-object v0
.end method
