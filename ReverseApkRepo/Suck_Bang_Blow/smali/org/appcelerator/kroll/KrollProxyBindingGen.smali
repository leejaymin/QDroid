.class public Lorg/appcelerator/kroll/KrollProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBinding;
.source "KrollProxyBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "Kroll"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.kroll.KrollProxy"

.field private static final METHOD_addEventListener:Ljava/lang/String; = "addEventListener"

.field private static final METHOD_extend:Ljava/lang/String; = "extend"

.field private static final METHOD_fireEvent:Ljava/lang/String; = "fireEvent"

.field private static final METHOD_fireSingleEvent:Ljava/lang/String; = "fireSingleEvent"

.field private static final METHOD_removeEventListener:Ljava/lang/String; = "removeEventListener"

.field private static final METHOD_toString:Ljava/lang/String; = "toString"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Kroll"

.field private static final TAG:Ljava/lang/String; = "KrollProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBinding;-><init>()V

    .line 52
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "fireSingleEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addEventListener"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "extend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeEventListener"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "toString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "fireEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 62
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const-string v0, "Kroll"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .parameter "name"

    .prologue
    const-string v13, "removeEventListener"

    const-string v12, "fireSingleEvent"

    const-string v11, "fireEvent"

    const-string v10, "extend"

    const-string v9, "addEventListener"

    .line 66
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 306
    :goto_0
    return-object v7

    .line 77
    :cond_0
    const-string v7, "fireSingleEvent"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    new-instance v3, Lorg/appcelerator/kroll/KrollProxyBindingGen$1;

    const-string v7, "fireSingleEvent"

    invoke-direct {v3, p0, v12}, Lorg/appcelerator/kroll/KrollProxyBindingGen$1;-><init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V

    .line 128
    .local v3, fireSingleEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "fireSingleEvent"

    invoke-virtual {v7, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 129
    goto :goto_0

    .line 132
    .end local v3           #fireSingleEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v7, "addEventListener"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    new-instance v0, Lorg/appcelerator/kroll/KrollProxyBindingGen$2;

    const-string v7, "addEventListener"

    invoke-direct {v0, p0, v9}, Lorg/appcelerator/kroll/KrollProxyBindingGen$2;-><init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V

    .line 169
    .local v0, addEventListener_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "addEventListener"

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 170
    goto :goto_0

    .line 173
    .end local v0           #addEventListener_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v7, "extend"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    new-instance v1, Lorg/appcelerator/kroll/KrollProxyBindingGen$3;

    const-string v7, "extend"

    invoke-direct {v1, p0, v10}, Lorg/appcelerator/kroll/KrollProxyBindingGen$3;-><init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V

    .line 197
    .local v1, extend_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "extend"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    .line 198
    goto :goto_0

    .line 201
    .end local v1           #extend_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v7, "removeEventListener"

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 202
    new-instance v4, Lorg/appcelerator/kroll/KrollProxyBindingGen$4;

    const-string v7, "removeEventListener"

    invoke-direct {v4, p0, v13}, Lorg/appcelerator/kroll/KrollProxyBindingGen$4;-><init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V

    .line 236
    .local v4, removeEventListener_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "removeEventListener"

    invoke-virtual {v7, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    .line 237
    goto :goto_0

    .line 240
    .end local v4           #removeEventListener_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v7, "toString"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 241
    new-instance v5, Lorg/appcelerator/kroll/KrollProxyBindingGen$5;

    const-string v7, "toString"

    invoke-direct {v5, p0, v7}, Lorg/appcelerator/kroll/KrollProxyBindingGen$5;-><init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V

    .line 256
    .local v5, toString_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "toString"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v5

    .line 257
    goto :goto_0

    .line 260
    .end local v5           #toString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v7, "fireEvent"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 261
    new-instance v2, Lorg/appcelerator/kroll/KrollProxyBindingGen$6;

    const-string v7, "fireEvent"

    invoke-direct {v2, p0, v11}, Lorg/appcelerator/kroll/KrollProxyBindingGen$6;-><init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V

    .line 301
    .local v2, fireEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "fireEvent"

    invoke-virtual {v7, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    .line 302
    goto/16 :goto_0

    .line 306
    .end local v2           #fireEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBinding;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "org.appcelerator.kroll.KrollProxy"

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
    .line 330
    const-class v0, Lorg/appcelerator/kroll/KrollProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const-string v0, "Kroll"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method
