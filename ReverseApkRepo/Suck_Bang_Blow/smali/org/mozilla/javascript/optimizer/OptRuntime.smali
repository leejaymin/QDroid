.class public final Lorg/mozilla/javascript/optimizer/OptRuntime;
.super Lorg/mozilla/javascript/ScriptRuntime;
.source "OptRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;
    }
.end annotation


# static fields
.field public static final minusOneObj:Ljava/lang/Double;

.field public static final oneObj:Ljava/lang/Double;

.field public static final zeroObj:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    .line 48
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x3ff0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->oneObj:Ljava/lang/Double;

    .line 49
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x4010

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->minusOneObj:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptRuntime;-><init>()V

    .line 287
    return-void
.end method

.method public static add(DLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "val1"
    .parameter "val2"

    .prologue
    .line 133
    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 134
    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .end local p2
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 135
    .restart local p2
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object v0

    .line 137
    .end local p2
    :goto_0
    return-object v0

    .restart local p2
    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static add(Ljava/lang/Object;D)Ljava/lang/Object;
    .locals 2
    .parameter "val1"
    .parameter "val2"

    .prologue
    .line 124
    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 125
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 126
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 127
    invoke-static {p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object v0

    .line 128
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static call0(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "fun"
    .parameter "thisObj"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 57
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p0, p2, p3, p1, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "fun"
    .parameter "thisObj"
    .parameter "arg0"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-interface {p0, p3, p4, p1, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "fun"
    .parameter "thisObj"
    .parameter "arg0"
    .parameter "arg1"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-interface {p0, p4, p5, p1, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "fun"
    .parameter "thisObj"
    .parameter "args"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 86
    invoke-interface {p0, p3, p4, p1, p2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "args"
    .parameter "name"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 95
    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/optimizer/OptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    .line 96
    .local v0, f:Lorg/mozilla/javascript/Callable;
    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 97
    .local v1, thisObj:Lorg/mozilla/javascript/Scriptable;
    invoke-interface {v0, p2, p3, v1, p0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    .line 107
    .local v0, f:Lorg/mozilla/javascript/Callable;
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 108
    .local v1, thisObj:Lorg/mozilla/javascript/Scriptable;
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "value"
    .parameter "property"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 117
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/OptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    .line 118
    .local v0, f:Lorg/mozilla/javascript/Callable;
    invoke-static {p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 119
    .local v1, thisObj:Lorg/mozilla/javascript/Scriptable;
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, p2, p3, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "fun"
    .parameter "thisObj"
    .parameter "args"
    .parameter "scope"
    .parameter "callerThis"
    .parameter "callType"
    .parameter "fileName"
    .parameter "lineNumber"

    .prologue
    .line 165
    invoke-static/range {p0 .. p8}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createNativeGenerator(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "funObj"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "maxLocals"
    .parameter "maxStack"

    .prologue
    .line 269
    new-instance v0, Lorg/mozilla/javascript/NativeGenerator;

    new-instance v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;

    invoke-direct {v1, p2, p3, p4}, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;-><init>(Lorg/mozilla/javascript/Scriptable;II)V

    invoke-direct {v0, p1, p0, v1}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static decodeIntArray(Ljava/lang/String;I)[I
    .locals 5
    .parameter "str"
    .parameter "arraySize"

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 214
    if-eqz p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 215
    :cond_0
    const/4 v3, 0x0

    .line 225
    :goto_0
    return-object v3

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 218
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 220
    :cond_2
    new-array v0, p1, [I

    .line 221
    .local v0, array:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, p1, :cond_3

    .line 222
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v2, v3, 0x1

    .line 223
    .local v2, shift:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v3, v4

    aput v3, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #shift:I
    :cond_3
    move-object v3, v0

    .line 225
    goto :goto_0
.end method

.method public static elemIncrDecr(Ljava/lang/Object;DLorg/mozilla/javascript/Context;I)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "index"
    .parameter "cx"
    .parameter "incrDecrMask"

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, v0, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static encodeIntArray([I)Ljava/lang/String;
    .locals 7
    .parameter "array"

    .prologue
    .line 197
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 207
    :goto_0
    return-object v5

    .line 198
    :cond_0
    array-length v2, p0

    .line 199
    .local v2, n:I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [C

    .line 200
    .local v0, buffer:[C
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-char v6, v0, v5

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, v2, :cond_1

    .line 202
    aget v4, p0, v1

    .line 203
    .local v4, value:I
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 204
    .local v3, shift:I
    ushr-int/lit8 v5, v4, 0x10

    int-to-char v5, v5

    aput-char v5, v0, v3

    .line 205
    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v4

    aput-char v6, v0, v5

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    .end local v3           #shift:I
    .end local v4           #value:I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static getGeneratorLocalsState(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 281
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;

    move-object v1, v0

    .line 282
    .local v1, rgs:Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;
    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->localsState:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 283
    iget v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->maxLocals:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->localsState:[Ljava/lang/Object;

    .line 284
    :cond_0
    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->localsState:[Ljava/lang/Object;

    return-object v2
.end method

.method public static getGeneratorStackState(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 274
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;

    move-object v1, v0

    .line 275
    .local v1, rgs:Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;
    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->stackState:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 276
    iget v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->maxStack:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->stackState:[Ljava/lang/Object;

    .line 277
    :cond_0
    iget-object v2, v1, Lorg/mozilla/javascript/optimizer/OptRuntime$GeneratorState;->stackState:[Ljava/lang/Object;

    return-object v2
.end method

.method public static initFunction(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V
    .locals 1
    .parameter "fn"
    .parameter "functionType"
    .parameter "scope"
    .parameter "cx"

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {p3, p2, p0, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    .line 157
    return-void
.end method

.method public static main(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V
    .locals 2
    .parameter "script"
    .parameter "args"

    .prologue
    .line 240
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/optimizer/OptRuntime$1;

    invoke-direct {v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime$1;-><init>([Ljava/lang/String;Lorg/mozilla/javascript/Script;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public static newArrayLiteral([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "objects"
    .parameter "encodedInts"
    .parameter "skipCount"
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 234
    invoke-static {p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->decodeIntArray(Ljava/lang/String;I)[I

    move-result-object v0

    .line 235
    .local v0, skipIndexces:[I
    invoke-static {p0, v0, p3, p4}, Lorg/mozilla/javascript/optimizer/OptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    return-object v1
.end method

.method public static newObjectSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "fun"
    .parameter "args"
    .parameter "scope"
    .parameter "callerThis"
    .parameter "callType"

    .prologue
    .line 174
    invoke-static {p0, p1, p2, p3, p5}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static padStart([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .parameter "currentArgs"
    .parameter "count"

    .prologue
    .line 148
    array-length v1, p0

    add-int/2addr v1, p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 149
    .local v0, result:[Ljava/lang/Object;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    return-object v0
.end method

.method public static throwStopIteration(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 259
    new-instance v0, Lorg/mozilla/javascript/JavaScriptException;

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v0
.end method

.method public static wrapDouble(D)Ljava/lang/Double;
    .locals 6
    .parameter "num"

    .prologue
    const-wide/high16 v4, 0x3ff0

    const-wide/16 v2, 0x0

    .line 179
    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    .line 180
    div-double v0, v4, p0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 182
    sget-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    .line 191
    :goto_0
    return-object v0

    .line 184
    :cond_0
    cmpl-double v0, p0, v4

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->oneObj:Ljava/lang/Double;

    goto :goto_0

    .line 186
    :cond_1
    const-wide/high16 v0, -0x4010

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 187
    sget-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->minusOneObj:Ljava/lang/Double;

    goto :goto_0

    .line 188
    :cond_2
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_3

    .line 189
    sget-object v0, Lorg/mozilla/javascript/optimizer/OptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    .line 191
    :cond_3
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0
.end method
