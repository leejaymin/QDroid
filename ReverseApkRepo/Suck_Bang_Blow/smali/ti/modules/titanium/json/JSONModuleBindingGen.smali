.class public Lti/modules/titanium/json/JSONModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "JSONModuleBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "JSON"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.json.JSONModule"

.field private static final METHOD_parse:Ljava/lang/String; = "parse"

.field private static final METHOD_stringify:Ljava/lang/String; = "stringify"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "JSON"

.field private static final TAG:Ljava/lang/String; = "JSONModuleBindingGen"

.field private static final TOP_LEVEL_JSON:Ljava/lang/String; = "JSON"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/json/JSONModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stringify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lti/modules/titanium/json/JSONModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "parse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 55
    const-string v0, "JSON"

    invoke-virtual {p1, v0, p2}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "JSON"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "name"

    .prologue
    const-string v6, "stringify"

    const-string v5, "parse"

    .line 60
    iget-object v3, p0, Lti/modules/titanium/json/JSONModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 132
    :goto_0
    return-object v3

    .line 71
    :cond_0
    const-string v3, "stringify"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    new-instance v1, Lti/modules/titanium/json/JSONModuleBindingGen$1;

    const-string v3, "stringify"

    invoke-direct {v1, p0, v6}, Lti/modules/titanium/json/JSONModuleBindingGen$1;-><init>(Lti/modules/titanium/json/JSONModuleBindingGen;Ljava/lang/String;)V

    .line 97
    .local v1, stringify_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/json/JSONModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "stringify"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 98
    goto :goto_0

    .line 101
    .end local v1           #stringify_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v3, "parse"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    new-instance v0, Lti/modules/titanium/json/JSONModuleBindingGen$2;

    const-string v3, "parse"

    invoke-direct {v0, p0, v5}, Lti/modules/titanium/json/JSONModuleBindingGen$2;-><init>(Lti/modules/titanium/json/JSONModuleBindingGen;Ljava/lang/String;)V

    .line 127
    .local v0, parse_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/json/JSONModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "parse"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 128
    goto :goto_0

    .line 132
    .end local v0           #parse_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "ti.modules.titanium.json.JSONModule"

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
    .line 156
    const-class v0, Lti/modules/titanium/json/JSONModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "JSON"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    new-instance v0, Lti/modules/titanium/json/JSONModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/json/JSONModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
