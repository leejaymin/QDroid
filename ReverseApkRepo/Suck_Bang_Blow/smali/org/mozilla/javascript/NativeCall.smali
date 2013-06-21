.class public final Lorg/mozilla/javascript/NativeCall;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeCall.java"


# static fields
.field private static final CALL_TAG:Ljava/lang/Object; = null

.field private static final Id_constructor:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x1

.field static final serialVersionUID:J = -0x67aff2d47ec02d36L


# instance fields
.field function:Lorg/mozilla/javascript/NativeFunction;

.field originalArgs:[Ljava/lang/Object;

.field transient parentActivationCall:Lorg/mozilla/javascript/NativeCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Call"

    sput-object v0, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 8
    .parameter "function"
    .parameter "scope"
    .parameter "args"

    .prologue
    const/4 v7, 0x4

    const-string v6, "arguments"

    .line 65
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    .line 68
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/NativeCall;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 71
    if-nez p3, :cond_0

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    :goto_0
    iput-object v5, p0, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getParamAndVarCount()I

    move-result v2

    .line 75
    .local v2, paramAndVarCount:I
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result v3

    .line 76
    .local v3, paramCount:I
    if-eqz v2, :cond_2

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 78
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, name:Ljava/lang/String;
    array-length v5, p3

    if-ge v0, v5, :cond_1

    aget-object v5, p3, v0

    move-object v4, v5

    .line 81
    .local v4, val:Ljava/lang/Object;
    :goto_2
    invoke-virtual {p0, v1, v4, v7}, Lorg/mozilla/javascript/NativeCall;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #paramAndVarCount:I
    .end local v3           #paramCount:I
    .end local v4           #val:Ljava/lang/Object;
    :cond_0
    move-object v5, p3

    .line 71
    goto :goto_0

    .line 79
    .restart local v0       #i:I
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #paramAndVarCount:I
    .restart local v3       #paramCount:I
    :cond_1
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v4, v5

    goto :goto_2

    .line 87
    .end local v0           #i:I
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    const-string v5, "arguments"

    invoke-super {p0, v6, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 88
    const-string v5, "arguments"

    new-instance v5, Lorg/mozilla/javascript/Arguments;

    invoke-direct {v5, p0}, Lorg/mozilla/javascript/Arguments;-><init>(Lorg/mozilla/javascript/NativeCall;)V

    invoke-virtual {p0, v6, v5, v7}, Lorg/mozilla/javascript/NativeCall;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 91
    :cond_3
    if-eqz v2, :cond_6

    .line 92
    move v0, v3

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v2, :cond_6

    .line 93
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1       #name:Ljava/lang/String;
    invoke-super {p0, v1, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 95
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarConst(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 96
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v6, 0xd

    invoke-virtual {p0, v1, v5, v6}, Lorg/mozilla/javascript/NativeCall;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 92
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 98
    :cond_5
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p0, v1, v5, v7}, Lorg/mozilla/javascript/NativeCall;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_4

    .line 102
    .end local v0           #i:I
    .end local v1           #name:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 58
    new-instance v0, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeCall;-><init>()V

    .line 59
    .local v0, obj:Lorg/mozilla/javascript/NativeCall;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeCall;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 60
    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const-string v4, "Call"

    .line 133
    sget-object v2, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    :goto_0
    return-object v2

    .line 136
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    .line 137
    .local v0, id:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 138
    if-eqz p4, :cond_1

    .line 139
    const-string v2, "msg.only.from.new"

    const-string v3, "Call"

    invoke-static {v2, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2

    .line 141
    :cond_1
    const-string v2, "Call"

    invoke-static {p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lorg/mozilla/javascript/NativeCall;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeCall;-><init>()V

    .line 143
    .local v1, result:Lorg/mozilla/javascript/NativeCall;
    invoke-static {p3}, Lorg/mozilla/javascript/NativeCall;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/NativeCall;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    move-object v2, v1

    .line 144
    goto :goto_0

    .line 146
    .end local v1           #result:Lorg/mozilla/javascript/NativeCall;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 113
    const-string v0, "constructor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "Call"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 121
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 122
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 126
    .local v1, s:Ljava/lang/String;
    sget-object v2, Lorg/mozilla/javascript/NativeCall;->CALL_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeCall;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 127
    return-void

    .line 124
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
