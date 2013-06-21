.class public Lti/modules/titanium/xml/XMLModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "XMLModuleBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "XML"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.XMLModule"

.field private static final METHOD_parseString:Ljava/lang/String; = "parseString"

.field private static final METHOD_serializeToString:Ljava/lang/String; = "serializeToString"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "XML"

.field private static final TAG:Ljava/lang/String; = "XMLModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/xml/XMLModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "parseString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lti/modules/titanium/xml/XMLModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "serializeToString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 54
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "XML"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "name"

    .prologue
    const-string v6, "serializeToString"

    const-string v5, "parseString"

    .line 58
    iget-object v3, p0, Lti/modules/titanium/xml/XMLModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 130
    :goto_0
    return-object v3

    .line 69
    :cond_0
    const-string v3, "parseString"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    new-instance v0, Lti/modules/titanium/xml/XMLModuleBindingGen$1;

    const-string v3, "parseString"

    invoke-direct {v0, p0, v5}, Lti/modules/titanium/xml/XMLModuleBindingGen$1;-><init>(Lti/modules/titanium/xml/XMLModuleBindingGen;Ljava/lang/String;)V

    .line 95
    .local v0, parseString_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/xml/XMLModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "parseString"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 96
    goto :goto_0

    .line 99
    .end local v0           #parseString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v3, "serializeToString"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    new-instance v1, Lti/modules/titanium/xml/XMLModuleBindingGen$2;

    const-string v3, "serializeToString"

    invoke-direct {v1, p0, v6}, Lti/modules/titanium/xml/XMLModuleBindingGen$2;-><init>(Lti/modules/titanium/xml/XMLModuleBindingGen;Ljava/lang/String;)V

    .line 125
    .local v1, serializeToString_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/xml/XMLModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "serializeToString"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 126
    goto :goto_0

    .line 130
    .end local v1           #serializeToString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "ti.modules.titanium.xml.XMLModule"

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
    .line 154
    const-class v0, Lti/modules/titanium/xml/XMLModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "XML"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 150
    new-instance v0, Lti/modules/titanium/xml/XMLModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/xml/XMLModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
