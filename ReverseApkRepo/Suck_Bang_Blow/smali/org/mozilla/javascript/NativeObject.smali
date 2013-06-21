.class public Lorg/mozilla/javascript/NativeObject;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeObject.java"


# static fields
.field private static final ConstructorId_create:I = -0x9

.field private static final ConstructorId_defineProperties:I = -0x8

.field private static final ConstructorId_defineProperty:I = -0x5

.field private static final ConstructorId_freeze:I = -0xd

.field private static final ConstructorId_getOwnPropertyDescriptor:I = -0x4

.field private static final ConstructorId_getOwnPropertyNames:I = -0x3

.field private static final ConstructorId_getPrototypeOf:I = -0x1

.field private static final ConstructorId_isExtensible:I = -0x6

.field private static final ConstructorId_isFrozen:I = -0xb

.field private static final ConstructorId_isSealed:I = -0xa

.field private static final ConstructorId_keys:I = -0x2

.field private static final ConstructorId_preventExtensions:I = -0x7

.field private static final ConstructorId_seal:I = -0xc

.field private static final Id___defineGetter__:I = 0x9

.field private static final Id___defineSetter__:I = 0xa

.field private static final Id___lookupGetter__:I = 0xb

.field private static final Id___lookupSetter__:I = 0xc

.field private static final Id_constructor:I = 0x1

.field private static final Id_hasOwnProperty:I = 0x5

.field private static final Id_isPrototypeOf:I = 0x7

.field private static final Id_propertyIsEnumerable:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x8

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0xc

.field private static final OBJECT_TAG:Ljava/lang/Object; = null

.field static final serialVersionUID:J = -0x580f0dd5006845f4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "Object"

    sput-object v0, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 57
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 58
    .local v0, obj:Lorg/mozilla/javascript/NativeObject;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 59
    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 137
    sget-object v32, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 138
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 441
    :goto_0
    return-object v32

    .line 140
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v17

    .line 141
    .local v17, id:I
    packed-switch v17, :pswitch_data_0

    .line 446
    :pswitch_0
    new-instance v32, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 143
    :pswitch_1
    if-eqz p4, :cond_1

    .line 145
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/IdFunctionObject;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    goto :goto_0

    .line 147
    :cond_1
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    if-eqz v32, :cond_2

    const/16 v32, 0x0

    aget-object v32, p5, v32

    if-eqz v32, :cond_2

    const/16 v32, 0x0

    aget-object v32, p5, v32

    sget-object v33, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 150
    :cond_2
    new-instance v32, Lorg/mozilla/javascript/NativeObject;

    invoke-direct/range {v32 .. v32}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    goto :goto_0

    .line 152
    :cond_3
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    goto :goto_0

    .line 157
    :pswitch_2
    const/16 v32, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 158
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 160
    .local v29, s:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v5

    .line 161
    .local v5, L:I
    if-eqz v5, :cond_4

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    const/16 v33, 0x28

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const/16 v32, 0x1

    sub-int v32, v5, v32

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    const/16 v33, 0x29

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 163
    const/16 v32, 0x1

    const/16 v33, 0x1

    sub-int v33, v5, v33

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    :cond_4
    move-object/from16 v32, v29

    .line 165
    goto/16 :goto_0

    .line 167
    .end local v5           #L:I
    .end local v29           #s:Ljava/lang/String;
    :cond_5
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v32, p4

    .line 171
    goto/16 :goto_0

    .line 175
    :pswitch_4
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 176
    const/16 v28, 0x0

    .line 186
    .local v28, result:Z
    :goto_1
    invoke-static/range {v28 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 178
    .end local v28           #result:Z
    :cond_6
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 179
    .restart local v29       #s:Ljava/lang/String;
    if-nez v29, :cond_7

    .line 180
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v19

    .line 181
    .local v19, index:I
    move-object/from16 v0, p4

    move/from16 v1, v19

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v28

    .line 182
    .restart local v28       #result:Z
    goto :goto_1

    .line 183
    .end local v19           #index:I
    .end local v28           #result:Z
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, v29

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v28

    .restart local v28       #result:Z
    goto :goto_1

    .line 191
    .end local v28           #result:Z
    .end local v29           #s:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_9

    .line 192
    const/16 v28, 0x0

    .line 212
    .restart local v28       #result:Z
    :cond_8
    :goto_2
    invoke-static/range {v28 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 194
    .end local v28           #result:Z
    :cond_9
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 195
    .restart local v29       #s:Ljava/lang/String;
    if-nez v29, :cond_b

    .line 196
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v19

    .line 197
    .restart local v19       #index:I
    move-object/from16 v0, p4

    move/from16 v1, v19

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v28

    .line 198
    .restart local v28       #result:Z
    if-eqz v28, :cond_8

    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 199
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object/from16 v30, v0

    .line 200
    .local v30, so:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result v8

    .line 201
    .local v8, attrs:I
    and-int/lit8 v32, v8, 0x2

    if-nez v32, :cond_a

    const/16 v32, 0x1

    move/from16 v28, v32

    :goto_3
    goto :goto_2

    :cond_a
    const/16 v32, 0x0

    move/from16 v28, v32

    goto :goto_3

    .line 204
    .end local v8           #attrs:I
    .end local v19           #index:I
    .end local v28           #result:Z
    .end local v30           #so:Lorg/mozilla/javascript/ScriptableObject;
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, v29

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v28

    .line 205
    .restart local v28       #result:Z
    if-eqz v28, :cond_8

    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 206
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object/from16 v30, v0

    .line 207
    .restart local v30       #so:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result v8

    .line 208
    .restart local v8       #attrs:I
    and-int/lit8 v32, v8, 0x2

    if-nez v32, :cond_c

    const/16 v32, 0x1

    move/from16 v28, v32

    :goto_4
    goto :goto_2

    :cond_c
    const/16 v32, 0x0

    move/from16 v28, v32

    goto :goto_4

    .line 216
    .end local v8           #attrs:I
    .end local v28           #result:Z
    .end local v29           #s:Ljava/lang/String;
    .end local v30           #so:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_6
    const/16 v28, 0x0

    .line 217
    .restart local v28       #result:Z
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    if-eqz v32, :cond_e

    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/mozilla/javascript/Scriptable;

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 218
    const/16 v32, 0x0

    aget-object v31, p5, v32

    check-cast v31, Lorg/mozilla/javascript/Scriptable;

    .line 220
    .local v31, v:Lorg/mozilla/javascript/Scriptable;
    :cond_d
    invoke-interface/range {v31 .. v31}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v31

    .line 221
    move-object/from16 v0, v31

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_f

    .line 222
    const/16 v28, 0x1

    .line 227
    .end local v31           #v:Lorg/mozilla/javascript/Scriptable;
    :cond_e
    :goto_5
    invoke-static/range {v28 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 225
    .restart local v31       #v:Lorg/mozilla/javascript/Scriptable;
    :cond_f
    if-nez v31, :cond_d

    goto :goto_5

    .line 231
    .end local v28           #result:Z
    .end local v31           #v:Lorg/mozilla/javascript/Scriptable;
    :pswitch_7
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    .line 236
    :pswitch_8
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_10

    const/16 v32, 0x1

    aget-object v32, p5, v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/mozilla/javascript/Callable;

    move/from16 v32, v0

    if-nez v32, :cond_12

    .line 237
    :cond_10
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_11

    const/16 v32, 0x1

    aget-object v32, p5, v32

    move-object/from16 v9, v32

    .line 239
    .local v9, badArg:Ljava/lang/Object;
    :goto_6
    invoke-static {v9}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v32

    throw v32

    .line 237
    .end local v9           #badArg:Ljava/lang/Object;
    :cond_11
    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v9, v32

    goto :goto_6

    .line 241
    :cond_12
    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 v32, v0

    if-nez v32, :cond_13

    .line 242
    const-string v32, "msg.extend.scriptable"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, p5, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v32

    throw v32

    .line 247
    :cond_13
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object/from16 v30, v0

    .line 248
    .restart local v30       #so:Lorg/mozilla/javascript/ScriptableObject;
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 249
    .local v22, name:Ljava/lang/String;
    if-eqz v22, :cond_15

    const/16 v32, 0x0

    move/from16 v19, v32

    .line 251
    .restart local v19       #index:I
    :goto_7
    const/16 v32, 0x1

    aget-object v13, p5, v32

    check-cast v13, Lorg/mozilla/javascript/Callable;

    .line 252
    .local v13, getterOrSetter:Lorg/mozilla/javascript/Callable;
    const/16 v32, 0xa

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    const/16 v32, 0x1

    move/from16 v20, v32

    .line 253
    .local v20, isSetter:Z
    :goto_8
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v19

    move-object v3, v13

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    .line 254
    move-object/from16 v0, v30

    instance-of v0, v0, Lorg/mozilla/javascript/NativeArray;

    move/from16 v32, v0

    if-eqz v32, :cond_14

    .line 255
    check-cast v30, Lorg/mozilla/javascript/NativeArray;

    .end local v30           #so:Lorg/mozilla/javascript/ScriptableObject;
    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeArray;->setDenseOnly(Z)V

    .line 257
    :cond_14
    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto/16 :goto_0

    .line 249
    .end local v13           #getterOrSetter:Lorg/mozilla/javascript/Callable;
    .end local v19           #index:I
    .end local v20           #isSetter:Z
    .restart local v30       #so:Lorg/mozilla/javascript/ScriptableObject;
    :cond_15
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v32

    move/from16 v19, v32

    goto :goto_7

    .line 252
    .restart local v13       #getterOrSetter:Lorg/mozilla/javascript/Callable;
    .restart local v19       #index:I
    :cond_16
    const/16 v32, 0x0

    move/from16 v20, v32

    goto :goto_8

    .line 262
    .end local v13           #getterOrSetter:Lorg/mozilla/javascript/Callable;
    .end local v19           #index:I
    .end local v22           #name:Ljava/lang/String;
    .end local v30           #so:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_9
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 v32, v0

    if-nez v32, :cond_18

    .line 264
    :cond_17
    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto/16 :goto_0

    .line 266
    :cond_18
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object/from16 v30, v0

    .line 267
    .restart local v30       #so:Lorg/mozilla/javascript/ScriptableObject;
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 268
    .restart local v22       #name:Ljava/lang/String;
    if-eqz v22, :cond_1a

    const/16 v32, 0x0

    move/from16 v19, v32

    .line 270
    .restart local v19       #index:I
    :goto_9
    const/16 v32, 0xc

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    const/16 v32, 0x1

    move/from16 v20, v32

    .line 273
    .restart local v20       #isSetter:Z
    :goto_a
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getGetterOrSetter(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v14

    .line 274
    .local v14, gs:Ljava/lang/Object;
    if-eqz v14, :cond_1c

    .line 286
    :cond_19
    if-eqz v14, :cond_1d

    move-object/from16 v32, v14

    .line 287
    goto/16 :goto_0

    .line 268
    .end local v14           #gs:Ljava/lang/Object;
    .end local v19           #index:I
    .end local v20           #isSetter:Z
    :cond_1a
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->lastIndexResult(Lorg/mozilla/javascript/Context;)I

    move-result v32

    move/from16 v19, v32

    goto :goto_9

    .line 270
    .restart local v19       #index:I
    :cond_1b
    const/16 v32, 0x0

    move/from16 v20, v32

    goto :goto_a

    .line 278
    .restart local v14       #gs:Ljava/lang/Object;
    .restart local v20       #isSetter:Z
    :cond_1c
    invoke-virtual/range {v30 .. v30}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v31

    .line 279
    .restart local v31       #v:Lorg/mozilla/javascript/Scriptable;
    if-eqz v31, :cond_19

    .line 281
    move-object/from16 v0, v31

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptableObject;

    move/from16 v32, v0

    if-eqz v32, :cond_19

    .line 282
    move-object/from16 v0, v31

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object/from16 v30, v0

    .line 285
    goto :goto_a

    .line 289
    .end local v31           #v:Lorg/mozilla/javascript/Scriptable;
    :cond_1d
    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto/16 :goto_0

    .line 293
    .end local v14           #gs:Ljava/lang/Object;
    .end local v19           #index:I
    .end local v20           #isSetter:Z
    .end local v22           #name:Ljava/lang/String;
    .end local v30           #so:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_a
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 294
    .local v6, arg:Ljava/lang/Object;
    :goto_b
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v25

    .line 295
    .local v25, obj:Lorg/mozilla/javascript/Scriptable;
    invoke-interface/range {v25 .. v25}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    goto/16 :goto_0

    .line 293
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/Scriptable;
    :cond_1e
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_b

    .line 299
    :pswitch_b
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 300
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_c
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v25

    .line 301
    .restart local v25       #obj:Lorg/mozilla/javascript/Scriptable;
    invoke-interface/range {v25 .. v25}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v18

    .line 302
    .local v18, ids:[Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_d
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v32, v0

    move v0, v15

    move/from16 v1, v32

    if-ge v0, v1, :cond_20

    .line 303
    aget-object v32, v18, v15

    invoke-static/range {v32 .. v32}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v18, v15

    .line 302
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 299
    .end local v6           #arg:Ljava/lang/Object;
    .end local v15           #i:I
    .end local v18           #ids:[Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/Scriptable;
    :cond_1f
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_c

    .line 305
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v15       #i:I
    .restart local v18       #ids:[Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/Scriptable;
    :cond_20
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    goto/16 :goto_0

    .line 309
    .end local v6           #arg:Ljava/lang/Object;
    .end local v15           #i:I
    .end local v18           #ids:[Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/Scriptable;
    :pswitch_c
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_21

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 310
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_e
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 311
    .local v25, obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v18

    .line 312
    .restart local v18       #ids:[Ljava/lang/Object;
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_f
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v32, v0

    move v0, v15

    move/from16 v1, v32

    if-ge v0, v1, :cond_22

    .line 313
    aget-object v32, v18, v15

    invoke-static/range {v32 .. v32}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v18, v15

    .line 312
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 309
    .end local v6           #arg:Ljava/lang/Object;
    .end local v15           #i:I
    .end local v18           #ids:[Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_21
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_e

    .line 315
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v15       #i:I
    .restart local v18       #ids:[Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_22
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    goto/16 :goto_0

    .line 319
    .end local v6           #arg:Ljava/lang/Object;
    .end local v15           #i:I
    .end local v18           #ids:[Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_d
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_23

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 323
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_10
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 324
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v23, v32

    .line 325
    .local v23, nameArg:Ljava/lang/Object;
    :goto_11
    invoke-static/range {v23 .. v23}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 326
    .restart local v22       #name:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v11

    .line 327
    .local v11, desc:Lorg/mozilla/javascript/Scriptable;
    if-nez v11, :cond_25

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto/16 :goto_0

    .line 319
    .end local v6           #arg:Ljava/lang/Object;
    .end local v11           #desc:Lorg/mozilla/javascript/Scriptable;
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #nameArg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_23
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_10

    .line 324
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_24
    const/16 v32, 0x1

    aget-object v32, p5, v32

    move-object/from16 v23, v32

    goto :goto_11

    .restart local v11       #desc:Lorg/mozilla/javascript/Scriptable;
    .restart local v22       #name:Ljava/lang/String;
    .restart local v23       #nameArg:Ljava/lang/Object;
    :cond_25
    move-object/from16 v32, v11

    .line 327
    goto/16 :goto_0

    .line 331
    .end local v6           #arg:Ljava/lang/Object;
    .end local v11           #desc:Lorg/mozilla/javascript/Scriptable;
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #nameArg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_e
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 332
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_12
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 333
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_27

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v22, v32

    .line 334
    .local v22, name:Ljava/lang/Object;
    :goto_13
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v12, v32

    .line 335
    .local v12, descArg:Ljava/lang/Object;
    :goto_14
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v11

    .line 336
    .local v11, desc:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    move-object/from16 v32, v25

    .line 337
    goto/16 :goto_0

    .line 331
    .end local v6           #arg:Ljava/lang/Object;
    .end local v11           #desc:Lorg/mozilla/javascript/ScriptableObject;
    .end local v12           #descArg:Ljava/lang/Object;
    .end local v22           #name:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_26
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_12

    .line 333
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_27
    const/16 v32, 0x1

    aget-object v32, p5, v32

    move-object/from16 v22, v32

    goto :goto_13

    .line 334
    .restart local v22       #name:Ljava/lang/Object;
    :cond_28
    const/16 v32, 0x2

    aget-object v32, p5, v32

    move-object/from16 v12, v32

    goto :goto_14

    .line 341
    .end local v6           #arg:Ljava/lang/Object;
    .end local v22           #name:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_f
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_29

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 342
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_15
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 343
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 341
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_29
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_15

    .line 347
    :pswitch_10
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2a

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 348
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_16
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 349
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    move-object/from16 v32, v25

    .line 350
    goto/16 :goto_0

    .line 347
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_2a
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_16

    .line 354
    :pswitch_11
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2b

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 355
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_17
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 356
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2c

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v27, v32

    .line 357
    .local v27, propsObj:Ljava/lang/Object;
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v26

    .line 358
    .local v26, props:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    move-object/from16 v32, v25

    .line 359
    goto/16 :goto_0

    .line 354
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    .end local v26           #props:Lorg/mozilla/javascript/Scriptable;
    .end local v27           #propsObj:Ljava/lang/Object;
    :cond_2b
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_17

    .line 356
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_2c
    const/16 v32, 0x1

    aget-object v32, p5, v32

    move-object/from16 v27, v32

    goto :goto_18

    .line 363
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_12
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2e

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 364
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_19
    if-nez v6, :cond_2f

    const/16 v32, 0x0

    move-object/from16 v25, v32

    .line 366
    .local v25, obj:Lorg/mozilla/javascript/Scriptable;
    :goto_1a
    new-instance v24, Lorg/mozilla/javascript/NativeObject;

    invoke-direct/range {v24 .. v24}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 367
    .local v24, newObject:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 368
    invoke-virtual/range {v24 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 370
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_2d

    const/16 v32, 0x1

    aget-object v32, p5, v32

    sget-object v33, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_2d

    .line 371
    const/16 v32, 0x1

    aget-object v32, p5, v32

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v26

    .line 372
    .restart local v26       #props:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    .end local v26           #props:Lorg/mozilla/javascript/Scriptable;
    :cond_2d
    move-object/from16 v32, v24

    .line 375
    goto/16 :goto_0

    .line 363
    .end local v6           #arg:Ljava/lang/Object;
    .end local v24           #newObject:Lorg/mozilla/javascript/ScriptableObject;
    .end local v25           #obj:Lorg/mozilla/javascript/Scriptable;
    :cond_2e
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_19

    .line 364
    .restart local v6       #arg:Ljava/lang/Object;
    :cond_2f
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v32

    move-object/from16 v25, v32

    goto :goto_1a

    .line 380
    .end local v6           #arg:Ljava/lang/Object;
    :pswitch_13
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_30

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 381
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_1b
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 383
    .local v25, obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v32

    if-eqz v32, :cond_31

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 380
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_30
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_1b

    .line 385
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_31
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v7

    .local v7, arr$:[Ljava/lang/Object;
    move-object v0, v7

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_1c
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_33

    aget-object v22, v7, v16

    .line 386
    .restart local v22       #name:Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v32

    const-string v33, "configurable"

    invoke-virtual/range {v32 .. v33}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 387
    .local v10, configurable:Ljava/lang/Object;
    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_32

    .line 388
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 385
    :cond_32
    add-int/lit8 v16, v16, 0x1

    goto :goto_1c

    .line 391
    .end local v10           #configurable:Ljava/lang/Object;
    .end local v22           #name:Ljava/lang/Object;
    :cond_33
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 395
    .end local v6           #arg:Ljava/lang/Object;
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_14
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_34

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 396
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_1d
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 398
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v32

    if-eqz v32, :cond_35

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 395
    .end local v6           #arg:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_34
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_1d

    .line 400
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_35
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #arr$:[Ljava/lang/Object;
    move-object v0, v7

    array-length v0, v0

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_1e
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_38

    aget-object v22, v7, v16

    .line 401
    .restart local v22       #name:Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v11

    .line 402
    .restart local v11       #desc:Lorg/mozilla/javascript/ScriptableObject;
    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "configurable"

    move-object v0, v11

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_36

    .line 403
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 404
    :cond_36
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v32

    if-eqz v32, :cond_37

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "writable"

    move-object v0, v11

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_37

    .line 405
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 400
    :cond_37
    add-int/lit8 v16, v16, 0x1

    goto :goto_1e

    .line 408
    .end local v11           #desc:Lorg/mozilla/javascript/ScriptableObject;
    .end local v22           #name:Ljava/lang/Object;
    :cond_38
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    .line 412
    .end local v6           #arg:Ljava/lang/Object;
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_15
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_3a

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 413
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_1f
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 415
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #arr$:[Ljava/lang/Object;
    move-object v0, v7

    array-length v0, v0

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_20
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3b

    aget-object v22, v7, v16

    .line 416
    .restart local v22       #name:Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v11

    .line 417
    .restart local v11       #desc:Lorg/mozilla/javascript/ScriptableObject;
    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "configurable"

    move-object v0, v11

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_39

    .line 418
    const-string v32, "configurable"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object v0, v11

    move-object/from16 v1, v32

    move-object v2, v11

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 419
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 415
    :cond_39
    add-int/lit8 v16, v16, 0x1

    goto :goto_20

    .line 412
    .end local v6           #arg:Ljava/lang/Object;
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v11           #desc:Lorg/mozilla/javascript/ScriptableObject;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v22           #name:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_3a
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto :goto_1f

    .line 422
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v7       #arr$:[Ljava/lang/Object;
    .restart local v16       #i$:I
    .restart local v21       #len$:I
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_3b
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    move-object/from16 v32, v25

    .line 424
    goto/16 :goto_0

    .line 428
    .end local v6           #arg:Ljava/lang/Object;
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :pswitch_16
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_3e

    sget-object v32, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v32

    .line 429
    .restart local v6       #arg:Ljava/lang/Object;
    :goto_21
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v25

    .line 431
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #arr$:[Ljava/lang/Object;
    move-object v0, v7

    array-length v0, v0

    move/from16 v21, v0

    .restart local v21       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_22
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3f

    aget-object v22, v7, v16

    .line 432
    .restart local v22       #name:Ljava/lang/Object;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v11

    .line 433
    .restart local v11       #desc:Lorg/mozilla/javascript/ScriptableObject;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v32

    if-eqz v32, :cond_3c

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "writable"

    move-object v0, v11

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3c

    .line 434
    const-string v32, "writable"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object v0, v11

    move-object/from16 v1, v32

    move-object v2, v11

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 435
    :cond_3c
    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v33, "configurable"

    move-object v0, v11

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3d

    .line 436
    const-string v32, "configurable"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object v0, v11

    move-object/from16 v1, v32

    move-object v2, v11

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 437
    :cond_3d
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 431
    add-int/lit8 v16, v16, 0x1

    goto :goto_22

    .line 428
    .end local v6           #arg:Ljava/lang/Object;
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v11           #desc:Lorg/mozilla/javascript/ScriptableObject;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v22           #name:Ljava/lang/Object;
    .end local v25           #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_3e
    const/16 v32, 0x0

    aget-object v32, p5, v32

    move-object/from16 v6, v32

    goto/16 :goto_21

    .line 439
    .restart local v6       #arg:Ljava/lang/Object;
    .restart local v7       #arr$:[Ljava/lang/Object;
    .restart local v16       #i$:I
    .restart local v21       #len$:I
    .restart local v25       #obj:Lorg/mozilla/javascript/ScriptableObject;
    :cond_3f
    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    move-object/from16 v32, v25

    .line 441
    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6
    .parameter "ctor"

    .prologue
    .line 76
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "getPrototypeOf"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 78
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x2

    const-string v4, "keys"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 80
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x3

    const-string v4, "getOwnPropertyNames"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 82
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x4

    const-string v4, "getOwnPropertyDescriptor"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 84
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "defineProperty"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 86
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x6

    const-string v4, "isExtensible"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 88
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x7

    const-string v4, "preventExtensions"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 90
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x8

    const-string v4, "defineProperties"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 92
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/16 v3, -0x9

    const-string v4, "create"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 94
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/16 v3, -0xa

    const-string v4, "isSealed"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 96
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/16 v3, -0xb

    const-string v4, "isFrozen"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 98
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/16 v3, -0xc

    const-string v4, "seal"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 100
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/16 v3, -0xd

    const-string v4, "freeze"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 102
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 103
    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 8
    .parameter "s"

    .prologue
    const/16 v7, 0x74

    const/16 v6, 0x53

    const/16 v5, 0x47

    const/16 v4, 0x8

    .line 457
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 458
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 488
    :cond_1
    return v2

    .line 459
    :pswitch_1
    const-string v0, "valueOf"

    const/4 v2, 0x4

    goto :goto_0

    .line 460
    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 461
    .local v1, c:I
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_2

    const-string v0, "toSource"

    const/16 v2, 0x8

    goto :goto_0

    .line 462
    :cond_2
    if-ne v1, v7, :cond_0

    const-string v0, "toString"

    const/4 v2, 0x2

    goto :goto_0

    .line 464
    .end local v1           #c:I
    :pswitch_3
    const-string v0, "constructor"

    const/4 v2, 0x1

    goto :goto_0

    .line 465
    :pswitch_4
    const-string v0, "isPrototypeOf"

    const/4 v2, 0x7

    goto :goto_0

    .line 466
    :pswitch_5
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 467
    .restart local v1       #c:I
    const/16 v3, 0x68

    if-ne v1, v3, :cond_3

    const-string v0, "hasOwnProperty"

    const/4 v2, 0x5

    goto :goto_0

    .line 468
    :cond_3
    if-ne v1, v7, :cond_0

    const-string v0, "toLocaleString"

    const/4 v2, 0x3

    goto :goto_0

    .line 470
    .end local v1           #c:I
    :pswitch_6
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 471
    .restart local v1       #c:I
    const/16 v3, 0x64

    if-ne v1, v3, :cond_5

    .line 472
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 473
    if-ne v1, v5, :cond_4

    const-string v0, "__defineGetter__"

    const/16 v2, 0x9

    goto :goto_0

    .line 474
    :cond_4
    if-ne v1, v6, :cond_0

    const-string v0, "__defineSetter__"

    const/16 v2, 0xa

    goto :goto_0

    .line 476
    :cond_5
    const/16 v3, 0x6c

    if-ne v1, v3, :cond_0

    .line 477
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 478
    if-ne v1, v5, :cond_6

    const-string v0, "__lookupGetter__"

    const/16 v2, 0xb

    goto :goto_0

    .line 479
    :cond_6
    if-ne v1, v6, :cond_0

    const-string v0, "__lookupSetter__"

    const/16 v2, 0xc

    goto :goto_0

    .line 482
    .end local v1           #c:I
    :pswitch_7
    const-string v0, "propertyIsEnumerable"

    const/4 v2, 0x6

    goto :goto_0

    .line 458
    nop

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
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "Object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 130
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 131
    return-void

    .line 112
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "valueOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 115
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "hasOwnProperty"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "propertyIsEnumerable"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 118
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "isPrototypeOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_8
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "__defineGetter__"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_9
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "__defineSetter__"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_a
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "__lookupGetter__"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_b
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "__lookupSetter__"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 110
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
