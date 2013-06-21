.class public Lti/modules/titanium/xml/TextProxyBindingGen;
.super Lti/modules/titanium/xml/CharacterDataProxyBindingGen;
.source "TextProxyBindingGen.java"


# static fields
.field private static final DYNPROP_text:Ljava/lang/String; = "text"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Text"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.TextProxy"

.field private static final METHOD_getText:Ljava/lang/String; = "getText"

.field private static final METHOD_splitText:Ljava/lang/String; = "splitText"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Text"

.field private static final TAG:Ljava/lang/String; = "TextProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;-><init>()V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "splitText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 56
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "Text"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const-string v2, "text"

    const-string v5, "splitText"

    const-string v3, "getText"

    .line 60
    iget-object v1, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 61
    .local v8, value:Ljava/lang/Object;
    if-eqz v8, :cond_0

    move-object v1, v8

    .line 152
    :goto_0
    return-object v1

    .line 70
    :cond_0
    const-string v1, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v0, Lti/modules/titanium/xml/TextProxyBindingGen$1;

    const-string v1, "text"

    const/4 v3, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/xml/TextProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/TextProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 94
    .local v0, text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 95
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 96
    iget-object v1, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 97
    goto :goto_0

    .line 101
    .end local v0           #text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v1, "getText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    new-instance v6, Lti/modules/titanium/xml/TextProxyBindingGen$2;

    const-string v1, "getText"

    invoke-direct {v6, p0, v3}, Lti/modules/titanium/xml/TextProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/TextProxyBindingGen;Ljava/lang/String;)V

    .line 117
    .local v6, getText_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "getText"

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 118
    goto :goto_0

    .line 121
    .end local v6           #getText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v1, "splitText"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    new-instance v7, Lti/modules/titanium/xml/TextProxyBindingGen$3;

    const-string v1, "splitText"

    invoke-direct {v7, p0, v5}, Lti/modules/titanium/xml/TextProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/TextProxyBindingGen;Ljava/lang/String;)V

    .line 147
    .local v7, splitText_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/TextProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "splitText"

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v7

    .line 148
    goto :goto_0

    .line 152
    .end local v7           #splitText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    invoke-super {p0, p1}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "ti.modules.titanium.xml.TextProxy"

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
    .line 176
    const-class v0, Lti/modules/titanium/xml/TextProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "Text"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method
