.class public Lorg/mozilla/javascript/WrapFactory;
.super Ljava/lang/Object;
.source "WrapFactory.java"


# instance fields
.field private javaPrimitiveWrap:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/WrapFactory;->javaPrimitiveWrap:Z

    return-void
.end method


# virtual methods
.method public final isJavaPrimitiveWrap()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/mozilla/javascript/WrapFactory;->javaPrimitiveWrap:Z

    return v0
.end method

.method public final setJavaPrimitiveWrap(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 174
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 175
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 178
    :cond_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/WrapFactory;->javaPrimitiveWrap:Z

    .line 179
    return-void
.end method

.method public wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p3, v1, :cond_0

    instance-of v1, p3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p3

    .line 105
    .end local p3
    :goto_0
    return-object v1

    .line 85
    .restart local p3
    :cond_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p4, v1, :cond_2

    .line 87
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p4, v1, :cond_3

    .line 89
    check-cast p3, Ljava/lang/Character;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .restart local p3
    :cond_3
    move-object v1, p3

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/javascript/WrapFactory;->isJavaPrimitiveWrap()Z

    move-result v1

    if-nez v1, :cond_7

    .line 93
    instance-of v1, p3, Ljava/lang/String;

    if-nez v1, :cond_5

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_5

    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    :cond_5
    move-object v1, p3

    .line 96
    goto :goto_0

    .line 97
    :cond_6
    instance-of v1, p3, Ljava/lang/Character;

    if-eqz v1, :cond_7

    .line 98
    check-cast p3, Ljava/lang/Character;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    .restart local p3
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 103
    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeJavaArray;->wrap(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/NativeJavaArray;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_0
.end method

.method public wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "javaObject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/Scriptable;"
        }
    .end annotation

    .prologue
    .line 149
    .local p4, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mozilla/javascript/NativeJavaObject;

    invoke-direct {v0, p2, p3, p4}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 150
    .local v0, wrap:Lorg/mozilla/javascript/Scriptable;
    return-object v0
.end method

.method public wrapNewObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "obj"

    .prologue
    .line 117
    instance-of v1, p3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_0

    .line 118
    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    .end local p3
    move-object v1, p3

    .line 124
    :goto_0
    return-object v1

    .line 120
    .restart local p3
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeJavaArray;->wrap(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/NativeJavaArray;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_0
.end method
