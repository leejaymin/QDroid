.class public Lorg/appcelerator/titanium/kroll/KrollBridge;
.super Ljava/lang/Object;
.source "KrollBridge.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiEvaluator;


# static fields
.field private static tiModule:Lti/modules/titanium/TitaniumModule;


# instance fields
.field private kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

.field private titanium:Lorg/appcelerator/kroll/KrollObject;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 3
    .parameter "kroll"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 32
    invoke-virtual {p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 33
    .local v0, tiContext:Lorg/appcelerator/titanium/TiContext;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiContext;->setJSContext(Lorg/appcelerator/titanium/TiEvaluator;)V

    .line 35
    sget-object v1, Lorg/appcelerator/titanium/kroll/KrollBridge;->tiModule:Lti/modules/titanium/TitaniumModule;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lti/modules/titanium/TitaniumModule;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lti/modules/titanium/TitaniumModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    sput-object v1, Lorg/appcelerator/titanium/kroll/KrollBridge;->tiModule:Lti/modules/titanium/TitaniumModule;

    .line 38
    :cond_0
    new-instance v1, Lorg/appcelerator/kroll/KrollObject;

    sget-object v2, Lorg/appcelerator/titanium/kroll/KrollBridge;->tiModule:Lti/modules/titanium/TitaniumModule;

    invoke-direct {v1, v2}, Lorg/appcelerator/kroll/KrollObject;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    .line 39
    sget-object v1, Lorg/appcelerator/titanium/kroll/KrollBridge;->tiModule:Lti/modules/titanium/TitaniumModule;

    invoke-virtual {v1, p0}, Lti/modules/titanium/TitaniumModule;->bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;)V

    .line 41
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    sget-object v2, Lorg/appcelerator/titanium/kroll/KrollBridge;->tiModule:Lti/modules/titanium/TitaniumModule;

    invoke-virtual {v1, p0, v2}, Lorg/appcelerator/titanium/TiApplication;->bindModules(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ctxSpecificName"
    .parameter "objectName"

    .prologue
    const/4 v6, 0x0

    .line 98
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 99
    .local v1, lastDot:I
    if-gez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, objName:Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, ctxName:Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 105
    .local v3, object:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0, v2, v0, v3}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter "objectName"
    .parameter "ctxSpecificName"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 109
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    .line 110
    .local v2, object:Lorg/mozilla/javascript/Scriptable;
    if-eqz p1, :cond_0

    .line 111
    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 113
    :cond_0
    if-eqz v2, :cond_1

    .line 114
    invoke-static {v2, v2, p2, v6, v6}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertySetInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v1

    .line 115
    .local v1, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v3, v1, p3}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, convertedValue:Ljava/lang/Object;
    invoke-interface {v2, p2, v2, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 119
    .end local v0           #convertedValue:Ljava/lang/Object;
    .end local v1           #invocation:Lorg/appcelerator/kroll/KrollInvocation;
    :cond_1
    return-void
.end method

.method public bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "topLevelName"
    .parameter "value"

    .prologue
    const-string v5, "."

    .line 72
    instance-of v4, p2, Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v4, :cond_0

    .line 73
    check-cast p2, Lorg/appcelerator/kroll/KrollProxy;

    .end local p2
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object p2

    .line 76
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/kroll/KrollContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 77
    .local v2, parent:Lorg/mozilla/javascript/Scriptable;
    move-object v1, p1

    .line 78
    .local v1, name:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const-string v4, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, lastDot:I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, parentName:Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/kroll/KrollContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 83
    if-nez v2, :cond_2

    .line 84
    iget-object v4, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/kroll/KrollContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 90
    .end local v0           #lastDot:I
    .end local v3           #parentName:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v2, v1, v2, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 91
    return-void

    .line 86
    .restart local v0       #lastDot:I
    .restart local v3       #parentName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bindToTopLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "topLevelName"
    .parameter "objectName"

    .prologue
    .line 94
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->evalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "src"

    .prologue
    .line 136
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 2
    .parameter "moduleName"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    .line 123
    .local v0, object:Lorg/appcelerator/kroll/KrollObject;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollModule;

    move-object v1, p0

    .line 126
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollObject;
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject([Ljava/lang/String;)Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getObject([Ljava/lang/String;)Lorg/appcelerator/kroll/KrollObject;
    .locals 2
    .parameter "objects"

    .prologue
    .line 58
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getObject(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 59
    .local v0, sObject:Lorg/mozilla/javascript/Scriptable;
    instance-of v1, v0, Lorg/appcelerator/kroll/KrollObject;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lorg/appcelerator/kroll/KrollObject;

    .end local v0           #sObject:Lorg/mozilla/javascript/Scriptable;
    move-object v1, v0

    .line 62
    :goto_0
    return-object v1

    .restart local v0       #sObject:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs getObject(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 5
    .parameter "globalObject"
    .parameter "objects"

    .prologue
    .line 45
    move-object v3, p1

    .line 46
    .local v3, object:Lorg/mozilla/javascript/Scriptable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 47
    aget-object v4, p2, v2

    invoke-interface {v3, v4, v3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, child:Ljava/lang/Object;
    instance-of v4, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_0

    .line 49
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v3, v0

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v4, 0x0

    .line 54
    .end local v1           #child:Ljava/lang/Object;
    :goto_1
    return-object v4

    :cond_1
    move-object v4, v3

    goto :goto_1
.end method

.method public getRootObject()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->titanium:Lorg/appcelerator/kroll/KrollObject;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->release()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollBridge;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 157
    :cond_0
    return-void
.end method
