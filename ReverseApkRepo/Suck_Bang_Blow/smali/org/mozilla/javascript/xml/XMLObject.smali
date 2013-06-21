.class public abstract Lorg/mozilla/javascript/xml/XMLObject;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "XMLObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "scope"
    .parameter "prototype"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 59
    return-void
.end method


# virtual methods
.method public addValues(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "thisIsLeft"
    .parameter "value"

    .prologue
    .line 125
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract ecmaDelete(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
.end method

.method public abstract ecmaGet(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract ecmaHas(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z
.end method

.method public abstract ecmaPut(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract enterDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;
.end method

.method public abstract enterWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeWith;
.end method

.method public abstract getExtraMethodSource(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/mozilla/javascript/xml/XMLObject;->avoidObjectDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "xml"

    goto :goto_0
.end method

.method public abstract memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;
.end method

.method public abstract memberRef(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;I)Lorg/mozilla/javascript/Ref;
.end method
