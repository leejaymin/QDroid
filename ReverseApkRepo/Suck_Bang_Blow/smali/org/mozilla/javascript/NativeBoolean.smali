.class final Lorg/mozilla/javascript/NativeBoolean;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeBoolean.java"


# static fields
.field private static final BOOLEAN_TAG:Ljava/lang/Object; = null

.field private static final Id_constructor:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0x4

.field static final serialVersionUID:J = -0x33956cfcac6218e5L


# instance fields
.field private booleanValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "Boolean"

    sput-object v0, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 62
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    .line 63
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 56
    new-instance v0, Lorg/mozilla/javascript/NativeBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    .line 57
    .local v0, obj:Lorg/mozilla/javascript/NativeBoolean;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeBoolean;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 58
    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    sget-object v3, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .end local p0
    .end local p4
    :goto_0
    return-object v3

    .line 102
    .restart local p0
    .restart local p4
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    .line 104
    .local v1, id:I
    if-ne v1, v5, :cond_4

    .line 106
    array-length v3, p5

    if-nez v3, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 114
    .end local p0
    .local v0, b:Z
    :goto_1
    if-nez p4, :cond_3

    .line 116
    new-instance v3, Lorg/mozilla/javascript/NativeBoolean;

    invoke-direct {v3, v0}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    goto :goto_0

    .line 109
    .end local v0           #b:Z
    .restart local p0
    :cond_1
    aget-object v3, p5, v4

    instance-of v3, v3, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_2

    aget-object p0, p5, v4

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .restart local v0       #b:Z
    :goto_2
    goto :goto_1

    .end local v0           #b:Z
    :cond_2
    aget-object v3, p5, v4

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_2

    .line 119
    .restart local v0       #b:Z
    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 124
    .end local v0           #b:Z
    .restart local p0
    :cond_4
    instance-of v3, p4, Lorg/mozilla/javascript/NativeBoolean;

    if-nez v3, :cond_5

    .line 125
    invoke-static {p1}, Lorg/mozilla/javascript/NativeBoolean;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 126
    :cond_5
    check-cast p4, Lorg/mozilla/javascript/NativeBoolean;

    .end local p4
    iget-boolean v2, p4, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    .line 128
    .local v2, value:Z
    packed-switch v1, :pswitch_data_0

    .line 139
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :pswitch_0
    if-eqz v2, :cond_6

    const-string v3, "true"

    goto :goto_0

    :cond_6
    const-string v3, "false"

    goto :goto_0

    .line 134
    :pswitch_1
    if-eqz v2, :cond_7

    const-string v3, "(new Boolean(true))"

    goto :goto_0

    :cond_7
    const-string v3, "(new Boolean(false))"

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    .line 149
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 150
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 151
    .local v3, s_length:I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    const-string v0, "valueOf"

    const/4 v2, 0x4

    .line 158
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 162
    :cond_1
    return v2

    .line 152
    :cond_2
    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 153
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 154
    .local v1, c:I
    const/16 v4, 0x6f

    if-ne v1, v4, :cond_3

    const-string v0, "toSource"

    const/4 v2, 0x3

    goto :goto_0

    .line 155
    :cond_3
    const/16 v4, 0x74

    if-ne v1, v4, :cond_0

    const-string v0, "toString"

    const/4 v2, 0x2

    goto :goto_0

    .line 157
    .end local v1           #c:I
    :cond_4
    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    const-string v0, "constructor"

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Boolean"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 76
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 92
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeBoolean;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 93
    return-void

    .line 87
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "valueOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
