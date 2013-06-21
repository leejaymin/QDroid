.class public Lti/modules/titanium/media/VideoPlayerProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "VideoPlayerProxyBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "Media.VideoPlayer"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.media.VideoPlayerProxy"

.field private static final METHOD_add:Ljava/lang/String; = "add"

.field private static final METHOD_hide:Ljava/lang/String; = "hide"

.field private static final METHOD_play:Ljava/lang/String; = "play"

.field private static final METHOD_stop:Ljava/lang/String; = "stop"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "VideoPlayer"

.field private static final TAG:Ljava/lang/String; = "VideoPlayerProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 50
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hide"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "play"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "add"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 58
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "Media.VideoPlayer"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "name"

    .prologue
    const-string v10, "stop"

    const-string v9, "play"

    const-string v8, "hide"

    const-string v7, "add"

    .line 62
    iget-object v5, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 63
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 156
    :goto_0
    return-object v5

    .line 73
    :cond_0
    const-string v5, "stop"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    new-instance v3, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$1;

    const-string v5, "stop"

    invoke-direct {v3, p0, v10}, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$1;-><init>(Lti/modules/titanium/media/VideoPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 87
    .local v3, stop_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "stop"

    invoke-virtual {v5, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 88
    goto :goto_0

    .line 91
    .end local v3           #stop_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v5, "hide"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    new-instance v1, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$2;

    const-string v5, "hide"

    invoke-direct {v1, p0, v8}, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$2;-><init>(Lti/modules/titanium/media/VideoPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 105
    .local v1, hide_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "hide"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 106
    goto :goto_0

    .line 109
    .end local v1           #hide_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v5, "play"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    new-instance v2, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$3;

    const-string v5, "play"

    invoke-direct {v2, p0, v9}, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$3;-><init>(Lti/modules/titanium/media/VideoPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 123
    .local v2, play_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "play"

    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    .line 124
    goto :goto_0

    .line 127
    .end local v2           #play_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "add"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    new-instance v0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$4;

    const-string v5, "add"

    invoke-direct {v0, p0, v7}, Lti/modules/titanium/media/VideoPlayerProxyBindingGen$4;-><init>(Lti/modules/titanium/media/VideoPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 151
    .local v0, add_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/media/VideoPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "add"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 152
    goto :goto_0

    .line 156
    .end local v0           #add_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "ti.modules.titanium.media.VideoPlayerProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const-class v0, Lti/modules/titanium/media/VideoPlayerProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "VideoPlayer"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method
