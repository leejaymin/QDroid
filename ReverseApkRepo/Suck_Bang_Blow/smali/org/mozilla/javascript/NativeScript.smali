.class Lorg/mozilla/javascript/NativeScript;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeScript.java"


# static fields
.field private static final Id_compile:I = 0x3

.field private static final Id_constructor:I = 0x1

.field private static final Id_exec:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x4

.field private static final SCRIPT_TAG:Ljava/lang/Object; = null

.field static final serialVersionUID:J = -0x5e4d0c813cab5264L


# instance fields
.field private script:Lorg/mozilla/javascript/Script;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "Script"

    sput-object v0, Lorg/mozilla/javascript/NativeScript;->SCRIPT_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/javascript/Script;)V
    .locals 0
    .parameter "script"

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    .line 73
    return-void
.end method

.method private static compile(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;
    .locals 8
    .parameter "cx"
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    new-array v7, v0, [I

    aput v1, v7, v1

    .line 187
    .local v7, linep:[I
    invoke-static {v7}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, filename:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 189
    const-string v4, "<Script object>"

    .line 190
    aput v0, v7, v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v3

    .line 194
    .local v3, reporter:Lorg/mozilla/javascript/ErrorReporter;
    aget v5, v7, v1

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    return-object v0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 66
    new-instance v0, Lorg/mozilla/javascript/NativeScript;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeScript;-><init>(Lorg/mozilla/javascript/Script;)V

    .line 67
    .local v0, obj:Lorg/mozilla/javascript/NativeScript;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeScript;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 68
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;
    .locals 1
    .parameter "thisObj"
    .parameter "f"

    .prologue
    .line 179
    instance-of v0, p0, Lorg/mozilla/javascript/NativeScript;

    if-nez v0, :cond_0

    .line 180
    invoke-static {p1}, Lorg/mozilla/javascript/NativeScript;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 181
    :cond_0
    check-cast p0, Lorg/mozilla/javascript/NativeScript;

    .end local p0
    return-object p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 97
    const-string v0, "msg.script.is.not.constructor"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method decompile(II)Ljava/lang/String;
    .locals 1
    .parameter "indent"
    .parameter "flags"

    .prologue
    .line 115
    iget-object v0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    instance-of v0, v0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->decompile(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    const-string v8, ""

    .line 140
    sget-object v6, Lorg/mozilla/javascript/NativeScript;->SCRIPT_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/BaseFunction;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 171
    :goto_0
    return-object v6

    .line 143
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    .line 144
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 174
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 146
    :pswitch_0
    array-length v6, p5

    if-nez v6, :cond_1

    const-string v6, ""

    move-object v5, v8

    .line 149
    .local v5, source:Ljava/lang/String;
    :goto_1
    invoke-static {p2, v5}, Lorg/mozilla/javascript/NativeScript;->compile(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;

    move-result-object v4

    .line 150
    .local v4, script:Lorg/mozilla/javascript/Script;
    new-instance v1, Lorg/mozilla/javascript/NativeScript;

    invoke-direct {v1, v4}, Lorg/mozilla/javascript/NativeScript;-><init>(Lorg/mozilla/javascript/Script;)V

    .line 151
    .local v1, nscript:Lorg/mozilla/javascript/NativeScript;
    invoke-static {v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object v6, v1

    .line 152
    goto :goto_0

    .line 146
    .end local v1           #nscript:Lorg/mozilla/javascript/NativeScript;
    .end local v4           #script:Lorg/mozilla/javascript/Script;
    .end local v5           #source:Ljava/lang/String;
    :cond_1
    aget-object v6, p5, v7

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 156
    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeScript;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;

    move-result-object v2

    .line 157
    .local v2, real:Lorg/mozilla/javascript/NativeScript;
    iget-object v3, v2, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    .line 158
    .local v3, realScript:Lorg/mozilla/javascript/Script;
    if-nez v3, :cond_2

    const-string v6, ""

    move-object v6, v8

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p2, v3, v7}, Lorg/mozilla/javascript/Context;->decompileScript(Lorg/mozilla/javascript/Script;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 163
    .end local v2           #real:Lorg/mozilla/javascript/NativeScript;
    .end local v3           #realScript:Lorg/mozilla/javascript/Script;
    :pswitch_2
    const-string v6, "msg.cant.call.indirect"

    const-string v7, "exec"

    invoke-static {v6, v7}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v6

    throw v6

    .line 168
    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/NativeScript;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeScript;

    move-result-object v2

    .line 169
    .restart local v2       #real:Lorg/mozilla/javascript/NativeScript;
    invoke-static {p5, v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    .line 170
    .restart local v5       #source:Ljava/lang/String;
    invoke-static {p2, v5}, Lorg/mozilla/javascript/NativeScript;->compile(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Script;

    move-result-object v6

    iput-object v6, v2, Lorg/mozilla/javascript/NativeScript;->script:Lorg/mozilla/javascript/Script;

    move-object v6, v2

    .line 171
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 3
    .parameter "s"

    .prologue
    .line 205
    const/4 v1, 0x0

    .local v1, id:I
    const/4 v0, 0x0

    .line 206
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 216
    :cond_0
    return v1

    .line 207
    :pswitch_1
    const-string v0, "exec"

    const/4 v1, 0x4

    goto :goto_0

    .line 208
    :pswitch_2
    const-string v0, "compile"

    const/4 v1, 0x3

    goto :goto_0

    .line 209
    :pswitch_3
    const-string v0, "toString"

    const/4 v1, 0x2

    goto :goto_0

    .line 210
    :pswitch_4
    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getArity()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "Script"

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 133
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeScript;->SCRIPT_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeScript;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 134
    return-void

    .line 128
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "exec"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "compile"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
