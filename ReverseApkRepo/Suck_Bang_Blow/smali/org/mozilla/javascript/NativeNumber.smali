.class final Lorg/mozilla/javascript/NativeNumber;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeNumber.java"


# static fields
.field private static final Id_constructor:I = 0x1

.field private static final Id_toExponential:I = 0x7

.field private static final Id_toFixed:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toPrecision:I = 0x8

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x5

.field private static final MAX_PRECISION:I = 0x64

.field private static final MAX_PROTOTYPE_ID:I = 0x8

.field private static final NUMBER_TAG:Ljava/lang/Object; = null

.field static final serialVersionUID:J = 0x30a28b6f31d79da5L


# instance fields
.field private doubleValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Number"

    sput-object v0, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(D)V
    .locals 0
    .parameter "number"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 66
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    .line 67
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 60
    new-instance v0, Lorg/mozilla/javascript/NativeNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    .line 61
    .local v0, obj:Lorg/mozilla/javascript/NativeNumber;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeNumber;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 62
    return-void
.end method

.method private static num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;
    .locals 5
    .parameter "val"
    .parameter "args"
    .parameter "zeroArgMode"
    .parameter "oneArgMode"
    .parameter "precisionMin"
    .parameter "precisionOffset"

    .prologue
    const/4 v4, 0x0

    .line 218
    array-length v3, p2

    if-nez v3, :cond_1

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, precision:I
    move p4, p3

    .line 231
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v2, sb:Ljava/lang/StringBuffer;
    add-int v3, v1, p6

    invoke-static {v2, p4, v3, p0, p1}, Lorg/mozilla/javascript/DToA;->JS_dtostr(Ljava/lang/StringBuffer;IID)V

    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 224
    .end local v1           #precision:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_1
    aget-object v3, p2, v4

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v1

    .line 225
    .restart local v1       #precision:I
    if-lt v1, p5, :cond_2

    const/16 v3, 0x64

    if-le v1, v3, :cond_0

    .line 226
    :cond_2
    const-string v3, "msg.bad.precision"

    aget-object v4, p2, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, msg:Ljava/lang/String;
    const-string v3, "RangeError"

    invoke-static {v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 122
    sget-object v4, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 199
    .end local p4
    :goto_0
    return-object v4

    .line 125
    .restart local p4
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v10

    .line 126
    .local v10, id:I
    const/4 v4, 0x1

    if-ne v10, v4, :cond_3

    .line 127
    move-object/from16 v0, p5

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, p5, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    move-wide v11, v4

    .line 129
    .local v11, val:D
    :goto_1
    if-nez p4, :cond_2

    .line 131
    new-instance v4, Lorg/mozilla/javascript/NativeNumber;

    invoke-direct {v4, v11, v12}, Lorg/mozilla/javascript/NativeNumber;-><init>(D)V

    goto :goto_0

    .line 127
    .end local v11           #val:D
    :cond_1
    const-wide/16 v4, 0x0

    move-wide v11, v4

    goto :goto_1

    .line 134
    .restart local v11       #val:D
    :cond_2
    invoke-static {v11, v12}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    goto :goto_0

    .line 139
    .end local v11           #val:D
    :cond_3
    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/NativeNumber;

    move v4, v0

    if-nez v4, :cond_4

    .line 140
    invoke-static {p1}, Lorg/mozilla/javascript/NativeNumber;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 141
    :cond_4
    check-cast p4, Lorg/mozilla/javascript/NativeNumber;

    .end local p4
    move-object/from16 v0, p4

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    move-wide v2, v0

    .line 143
    .local v2, value:D
    packed-switch v10, :pswitch_data_0

    .line 203
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :pswitch_0
    move-object/from16 v0, p5

    array-length v0, v0

    move v4, v0

    if-nez v4, :cond_5

    const/16 v4, 0xa

    move v9, v4

    .line 151
    .local v9, base:I
    :goto_2
    invoke-static {v2, v3, v9}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 149
    .end local v9           #base:I
    :cond_5
    const/4 v4, 0x0

    aget-object v4, p5, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v4

    move v9, v4

    goto :goto_2

    .line 155
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(new Number("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    goto/16 :goto_0

    .line 161
    :pswitch_3
    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, -0x14

    const/4 v8, 0x0

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 166
    :pswitch_4
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 167
    const-string v4, "NaN"

    goto/16 :goto_0

    .line 169
    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 170
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_7

    .line 171
    const-string v4, "Infinity"

    goto/16 :goto_0

    .line 174
    :cond_7
    const-string v4, "-Infinity"

    goto/16 :goto_0

    .line 178
    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 184
    :pswitch_5
    move-object/from16 v0, p5

    array-length v0, v0

    move v4, v0

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    aget-object v4, p5, v4

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v4, v5, :cond_a

    .line 185
    :cond_9
    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 188
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 189
    const-string v4, "NaN"

    goto/16 :goto_0

    .line 191
    :cond_b
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 192
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_c

    .line 193
    const-string v4, "Infinity"

    goto/16 :goto_0

    .line 196
    :cond_c
    const-string v4, "-Infinity"

    goto/16 :goto_0

    .line 199
    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p5

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/NativeNumber;->num_to(D[Ljava/lang/Object;IIII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 5
    .parameter "ctor"

    .prologue
    const/4 v4, 0x7

    .line 78
    const/4 v0, 0x7

    .line 82
    .local v0, attr:I
    const-string v1, "NaN"

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    invoke-virtual {p1, v1, v2, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 83
    const-string v1, "POSITIVE_INFINITY"

    const-wide/high16 v2, 0x7ff0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 86
    const-string v1, "NEGATIVE_INFINITY"

    const-wide/high16 v2, -0x10

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 89
    const-string v1, "MAX_VALUE"

    const-wide v2, 0x7fefffffffffffffL

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 92
    const-string v1, "MIN_VALUE"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v4}, Lorg/mozilla/javascript/IdFunctionObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 96
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 97
    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x74

    .line 243
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 244
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 264
    :cond_1
    return v2

    .line 245
    :pswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 246
    .local v1, c:I
    if-ne v1, v4, :cond_2

    const-string v0, "toFixed"

    const/4 v2, 0x6

    goto :goto_0

    .line 247
    :cond_2
    const/16 v3, 0x76

    if-ne v1, v3, :cond_0

    const-string v0, "valueOf"

    const/4 v2, 0x5

    goto :goto_0

    .line 249
    .end local v1           #c:I
    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 250
    .restart local v1       #c:I
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_3

    const-string v0, "toSource"

    const/4 v2, 0x4

    goto :goto_0

    .line 251
    :cond_3
    if-ne v1, v4, :cond_0

    const-string v0, "toString"

    const/4 v2, 0x2

    goto :goto_0

    .line 253
    .end local v1           #c:I
    :pswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 254
    .restart local v1       #c:I
    const/16 v3, 0x63

    if-ne v1, v3, :cond_4

    const-string v0, "constructor"

    const/4 v2, 0x1

    goto :goto_0

    .line 255
    :cond_4
    if-ne v1, v4, :cond_0

    const-string v0, "toPrecision"

    const/16 v2, 0x8

    goto :goto_0

    .line 257
    .end local v1           #c:I
    :pswitch_4
    const-string v0, "toExponential"

    const/4 v2, 0x7

    goto :goto_0

    .line 258
    :pswitch_5
    const-string v0, "toLocaleString"

    const/4 v2, 0x3

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Number"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 115
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeNumber;->NUMBER_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeNumber;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 116
    return-void

    .line 106
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toLocaleString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "valueOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toFixed"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toExponential"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toPrecision"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeNumber;->doubleValue:D

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
