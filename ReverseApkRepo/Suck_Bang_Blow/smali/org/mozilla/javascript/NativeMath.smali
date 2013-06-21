.class final Lorg/mozilla/javascript/NativeMath;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeMath.java"


# static fields
.field private static final Id_E:I = 0x14

.field private static final Id_LN10:I = 0x16

.field private static final Id_LN2:I = 0x17

.field private static final Id_LOG10E:I = 0x19

.field private static final Id_LOG2E:I = 0x18

.field private static final Id_PI:I = 0x15

.field private static final Id_SQRT1_2:I = 0x1a

.field private static final Id_SQRT2:I = 0x1b

.field private static final Id_abs:I = 0x2

.field private static final Id_acos:I = 0x3

.field private static final Id_asin:I = 0x4

.field private static final Id_atan:I = 0x5

.field private static final Id_atan2:I = 0x6

.field private static final Id_ceil:I = 0x7

.field private static final Id_cos:I = 0x8

.field private static final Id_exp:I = 0x9

.field private static final Id_floor:I = 0xa

.field private static final Id_log:I = 0xb

.field private static final Id_max:I = 0xc

.field private static final Id_min:I = 0xd

.field private static final Id_pow:I = 0xe

.field private static final Id_random:I = 0xf

.field private static final Id_round:I = 0x10

.field private static final Id_sin:I = 0x11

.field private static final Id_sqrt:I = 0x12

.field private static final Id_tan:I = 0x13

.field private static final Id_toSource:I = 0x1

.field private static final LAST_METHOD_ID:I = 0x13

.field private static final MATH_TAG:Ljava/lang/Object; = null

.field private static final MAX_ID:I = 0x1b

.field static final serialVersionUID:J = -0x7aa9e4af6da33631L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "Math"

    sput-object v0, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 67
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 56
    new-instance v0, Lorg/mozilla/javascript/NativeMath;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeMath;-><init>()V

    .line 57
    .local v0, obj:Lorg/mozilla/javascript/NativeMath;
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeMath;->activatePrototypeMap(I)V

    .line 58
    invoke-static {p0}, Lorg/mozilla/javascript/NativeMath;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeMath;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 59
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeMath;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeMath;->sealObject()V

    .line 61
    :cond_0
    const-string v1, "Math"

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 63
    return-void
.end method

.method private js_pow(DD)D
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 262
    cmpl-double v4, p3, p3

    if-eqz v4, :cond_1

    .line 264
    move-wide v0, p3

    .line 311
    .local v0, result:D
    :cond_0
    :goto_0
    return-wide v0

    .line 265
    .end local v0           #result:D
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-nez v4, :cond_2

    .line 267
    const-wide/high16 v0, 0x3ff0

    .restart local v0       #result:D
    goto :goto_0

    .line 268
    .end local v0           #result:D
    :cond_2
    const-wide/16 v4, 0x0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_8

    .line 270
    const-wide/high16 v4, 0x3ff0

    div-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    .line 271
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_3

    const-wide/16 v4, 0x0

    move-wide v0, v4

    .restart local v0       #result:D
    :goto_1
    goto :goto_0

    .end local v0           #result:D
    :cond_3
    const-wide/high16 v4, 0x7ff0

    move-wide v0, v4

    goto :goto_1

    .line 274
    :cond_4
    double-to-long v2, p3

    .line 275
    .local v2, y_long:J
    long-to-double v4, v2

    cmpl-double v4, v4, p3

    if-nez v4, :cond_6

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 276
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_5

    const-wide/high16 v4, -0x8000

    move-wide v0, v4

    .restart local v0       #result:D
    :goto_2
    goto :goto_0

    .end local v0           #result:D
    :cond_5
    const-wide/high16 v4, -0x10

    move-wide v0, v4

    goto :goto_2

    .line 278
    :cond_6
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_7

    const-wide/16 v4, 0x0

    move-wide v0, v4

    .restart local v0       #result:D
    :goto_3
    goto :goto_0

    .end local v0           #result:D
    :cond_7
    const-wide/high16 v4, 0x7ff0

    move-wide v0, v4

    goto :goto_3

    .line 282
    .end local v2           #y_long:J
    :cond_8
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 283
    .restart local v0       #result:D
    cmpl-double v4, v0, v0

    if-eqz v4, :cond_0

    .line 286
    const-wide/high16 v4, 0x7ff0

    cmpl-double v4, p3, v4

    if-nez v4, :cond_b

    .line 287
    const-wide/high16 v4, -0x4010

    cmpg-double v4, p1, v4

    if-ltz v4, :cond_9

    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, v4, p1

    if-gez v4, :cond_a

    .line 288
    :cond_9
    const-wide/high16 v0, 0x7ff0

    goto :goto_0

    .line 289
    :cond_a
    const-wide/high16 v4, -0x4010

    cmpg-double v4, v4, p1

    if-gez v4, :cond_0

    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 290
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 292
    :cond_b
    const-wide/high16 v4, -0x10

    cmpl-double v4, p3, v4

    if-nez v4, :cond_e

    .line 293
    const-wide/high16 v4, -0x4010

    cmpg-double v4, p1, v4

    if-ltz v4, :cond_c

    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, v4, p1

    if-gez v4, :cond_d

    .line 294
    :cond_c
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 295
    :cond_d
    const-wide/high16 v4, -0x4010

    cmpg-double v4, v4, p1

    if-gez v4, :cond_0

    const-wide/high16 v4, 0x3ff0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 296
    const-wide/high16 v0, 0x7ff0

    goto/16 :goto_0

    .line 298
    :cond_e
    const-wide/high16 v4, 0x7ff0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_10

    .line 299
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_f

    const-wide/high16 v4, 0x7ff0

    move-wide v0, v4

    :goto_4
    goto/16 :goto_0

    :cond_f
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_4

    .line 300
    :cond_10
    const-wide/high16 v4, -0x10

    cmpl-double v4, p1, v4

    if-nez v4, :cond_0

    .line 301
    double-to-long v2, p3

    .line 302
    .restart local v2       #y_long:J
    long-to-double v4, v2

    cmpl-double v4, v4, p3

    if-nez v4, :cond_12

    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_12

    .line 304
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_11

    const-wide/high16 v4, -0x10

    move-wide v0, v4

    :goto_5
    goto/16 :goto_0

    :cond_11
    const-wide/high16 v4, -0x8000

    move-wide v0, v4

    goto :goto_5

    .line 306
    :cond_12
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_13

    const-wide/high16 v4, 0x7ff0

    move-wide v0, v4

    :goto_6
    goto/16 :goto_0

    :cond_13
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_6
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 124
    sget-object v8, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 256
    :goto_0
    return-object v8

    .line 128
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v5

    .line 129
    .local v5, methodId:I
    packed-switch v5, :pswitch_data_0

    .line 254
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 131
    :pswitch_0
    const-string v8, "Math"

    goto :goto_0

    .line 134
    :pswitch_1
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 136
    .local v6, x:D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    move-wide v6, v8

    .line 256
    :cond_1
    :goto_1
    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v8

    goto :goto_0

    .line 136
    :cond_2
    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_1

    neg-double v8, v6

    move-wide v6, v8

    goto :goto_1

    .line 141
    .end local v6           #x:D
    :pswitch_2
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 142
    .restart local v6       #x:D
    cmpl-double v8, v6, v6

    if-nez v8, :cond_4

    const-wide/high16 v8, -0x4010

    cmpg-double v8, v8, v6

    if-gtz v8, :cond_4

    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_4

    .line 143
    const/4 v8, 0x3

    if-ne v5, v8, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    move-wide v6, v8

    :goto_2
    goto :goto_1

    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_2

    .line 145
    :cond_4
    const-wide/high16 v6, 0x7ff8

    .line 147
    goto :goto_1

    .line 150
    .end local v6           #x:D
    :pswitch_3
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 151
    .restart local v6       #x:D
    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 152
    goto :goto_1

    .line 155
    .end local v6           #x:D
    :pswitch_4
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 156
    .restart local v6       #x:D
    const/4 v8, 0x1

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 157
    goto :goto_1

    .line 160
    .end local v6           #x:D
    :pswitch_5
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 161
    .restart local v6       #x:D
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 162
    goto :goto_1

    .line 165
    .end local v6           #x:D
    :pswitch_6
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 166
    .restart local v6       #x:D
    const-wide/high16 v8, 0x7ff0

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_5

    const-wide/high16 v8, -0x10

    cmpl-double v8, v6, v8

    if-nez v8, :cond_6

    :cond_5
    const-wide/high16 v8, 0x7ff8

    move-wide v6, v8

    .line 169
    :goto_3
    goto :goto_1

    .line 166
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_3

    .line 172
    .end local v6           #x:D
    :pswitch_7
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 173
    .restart local v6       #x:D
    const-wide/high16 v8, 0x7ff0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_7

    .line 176
    :goto_4
    goto :goto_1

    .line 173
    :cond_7
    const-wide/high16 v8, -0x10

    cmpl-double v8, v6, v8

    if-nez v8, :cond_8

    const-wide/16 v8, 0x0

    move-wide v6, v8

    goto :goto_4

    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_4

    .line 179
    .end local v6           #x:D
    :pswitch_8
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 180
    .restart local v6       #x:D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 181
    goto/16 :goto_1

    .line 184
    .end local v6           #x:D
    :pswitch_9
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 186
    .restart local v6       #x:D
    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_9

    const-wide/high16 v8, 0x7ff8

    move-wide v6, v8

    .line 187
    :goto_5
    goto/16 :goto_1

    .line 186
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_5

    .line 191
    .end local v6           #x:D
    :pswitch_a
    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    const-wide/high16 v8, -0x10

    move-wide v6, v8

    .line 193
    .restart local v6       #x:D
    :goto_6
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    array-length v8, p5

    if-eq v2, v8, :cond_1

    .line 194
    aget-object v8, p5, v2

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 195
    .local v0, d:D
    cmpl-double v8, v0, v0

    if-eqz v8, :cond_b

    .line 196
    move-wide v6, v0

    .line 197
    goto/16 :goto_1

    .line 191
    .end local v0           #d:D
    .end local v2           #i:I
    .end local v6           #x:D
    :cond_a
    const-wide/high16 v8, 0x7ff0

    move-wide v6, v8

    goto :goto_6

    .line 199
    .restart local v0       #d:D
    .restart local v2       #i:I
    .restart local v6       #x:D
    :cond_b
    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    .line 201
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 193
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 203
    :cond_c
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    goto :goto_8

    .line 209
    .end local v0           #d:D
    .end local v2           #i:I
    .end local v6           #x:D
    :pswitch_b
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 210
    .restart local v6       #x:D
    const/4 v8, 0x1

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v8

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/mozilla/javascript/NativeMath;->js_pow(DD)D

    move-result-wide v6

    .line 211
    goto/16 :goto_1

    .line 214
    .end local v6           #x:D
    :pswitch_c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    .line 215
    .restart local v6       #x:D
    goto/16 :goto_1

    .line 218
    .end local v6           #x:D
    :pswitch_d
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 219
    .restart local v6       #x:D
    cmpl-double v8, v6, v6

    if-nez v8, :cond_1

    const-wide/high16 v8, 0x7ff0

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_1

    const-wide/high16 v8, -0x10

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_1

    .line 223
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 224
    .local v3, l:J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_d

    .line 225
    long-to-double v6, v3

    goto/16 :goto_1

    .line 228
    :cond_d
    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_e

    .line 229
    sget-wide v6, Lorg/mozilla/javascript/ScriptRuntime;->negativeZero:D

    goto/16 :goto_1

    .line 230
    :cond_e
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_1

    .line 231
    const-wide/16 v6, 0x0

    goto/16 :goto_1

    .line 238
    .end local v3           #l:J
    .end local v6           #x:D
    :pswitch_e
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 239
    .restart local v6       #x:D
    const-wide/high16 v8, 0x7ff0

    cmpl-double v8, v6, v8

    if-eqz v8, :cond_f

    const-wide/high16 v8, -0x10

    cmpl-double v8, v6, v8

    if-nez v8, :cond_10

    :cond_f
    const-wide/high16 v8, 0x7ff8

    move-wide v6, v8

    .line 242
    :goto_9
    goto/16 :goto_1

    .line 239
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-wide v6, v8

    goto :goto_9

    .line 245
    .end local v6           #x:D
    :pswitch_f
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 246
    .restart local v6       #x:D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 247
    goto/16 :goto_1

    .line 250
    .end local v6           #x:D
    :pswitch_10
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v6

    .line 251
    .restart local v6       #x:D
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    .line 252
    goto/16 :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 9
    .parameter "s"

    .prologue
    const/16 v8, 0x6f

    const/16 v7, 0x6e

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 321
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 322
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 364
    :cond_1
    :goto_1
    return v2

    .line 323
    :pswitch_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x45

    if-ne v3, v4, :cond_0

    const/16 v2, 0x14

    goto :goto_1

    .line 324
    :pswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

    const/16 v2, 0x15

    goto :goto_1

    .line 325
    :pswitch_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 326
    :sswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_0

    const/16 v2, 0x17

    goto :goto_1

    .line 327
    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    .line 328
    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    .line 329
    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x70

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    .line 330
    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    .line 331
    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 332
    .local v1, c:I
    if-ne v1, v7, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    .line 333
    :cond_2
    const/16 v3, 0x78

    if-ne v1, v3, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    .line 335
    .end local v1           #c:I
    :sswitch_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x77

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    .line 336
    :sswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_1

    .line 337
    :sswitch_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    .line 339
    :pswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 340
    :sswitch_9
    const-string v0, "LN10"

    const/16 v2, 0x16

    goto/16 :goto_0

    .line 341
    :sswitch_a
    const-string v0, "acos"

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 342
    :sswitch_b
    const-string v0, "ceil"

    const/4 v2, 0x7

    goto/16 :goto_0

    .line 343
    :sswitch_c
    const-string v0, "sqrt"

    const/16 v2, 0x12

    goto/16 :goto_0

    .line 344
    :sswitch_d
    const-string v0, "asin"

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 345
    :sswitch_e
    const-string v0, "atan"

    const/4 v2, 0x5

    goto/16 :goto_0

    .line 347
    :pswitch_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    .line 348
    :sswitch_f
    const-string v0, "LOG2E"

    const/16 v2, 0x18

    goto/16 :goto_0

    .line 349
    :sswitch_10
    const-string v0, "SQRT2"

    const/16 v2, 0x1b

    goto/16 :goto_0

    .line 350
    :sswitch_11
    const-string v0, "atan2"

    const/4 v2, 0x6

    goto/16 :goto_0

    .line 351
    :sswitch_12
    const-string v0, "floor"

    const/16 v2, 0xa

    goto/16 :goto_0

    .line 352
    :sswitch_13
    const-string v0, "round"

    const/16 v2, 0x10

    goto/16 :goto_0

    .line 354
    :pswitch_5
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 355
    .restart local v1       #c:I
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_3

    const-string v0, "LOG10E"

    const/16 v2, 0x19

    goto/16 :goto_0

    .line 356
    :cond_3
    const/16 v3, 0x72

    if-ne v1, v3, :cond_0

    const-string v0, "random"

    const/16 v2, 0xf

    goto/16 :goto_0

    .line 358
    .end local v1           #c:I
    :pswitch_6
    const-string v0, "SQRT1_2"

    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 359
    :pswitch_7
    const-string v0, "toSource"

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 322
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

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x61 -> :sswitch_1
        0x63 -> :sswitch_2
        0x65 -> :sswitch_3
        0x6c -> :sswitch_4
        0x6d -> :sswitch_5
        0x70 -> :sswitch_6
        0x73 -> :sswitch_7
        0x74 -> :sswitch_8
    .end sparse-switch

    .line 339
    :sswitch_data_1
    .sparse-switch
        0x4e -> :sswitch_9
        0x63 -> :sswitch_a
        0x65 -> :sswitch_b
        0x71 -> :sswitch_c
        0x73 -> :sswitch_d
        0x74 -> :sswitch_e
    .end sparse-switch

    .line 347
    :sswitch_data_2
    .sparse-switch
        0x4c -> :sswitch_f
        0x53 -> :sswitch_10
        0x61 -> :sswitch_11
        0x66 -> :sswitch_12
        0x72 -> :sswitch_13
    .end sparse-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "Math"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 75
    const/16 v4, 0x13

    if-gt p1, v4, :cond_0

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :pswitch_0
    const/4 v0, 0x0

    .local v0, arity:I
    const-string v1, "toSource"

    .line 100
    .local v1, name:Ljava/lang/String;
    :goto_0
    sget-object v4, Lorg/mozilla/javascript/NativeMath;->MATH_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v4, p1, v1, v0}, Lorg/mozilla/javascript/NativeMath;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 118
    .end local v0           #arity:I
    :goto_1
    return-void

    .line 80
    .end local v1           #name:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "abs"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "acos"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "asin"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "atan"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "atan2"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "ceil"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "cos"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_8
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "exp"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_9
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "floor"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_a
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "log"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_b
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "max"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_c
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "min"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_d
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "pow"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_e
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "random"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_f
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "round"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_10
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "sin"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_11
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "sqrt"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_12
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "tan"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 113
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :pswitch_13
    const-wide v2, 0x4005bf0a8b145769L

    .local v2, x:D
    const-string v1, "E"

    .line 115
    .restart local v1       #name:Ljava/lang/String;
    :goto_2
    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {p0, p1, v1, v4, v5}, Lorg/mozilla/javascript/NativeMath;->initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 106
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_14
    const-wide v2, 0x400921fb54442d18L

    .restart local v2       #x:D
    const-string v1, "PI"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 107
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_15
    const-wide v2, 0x40026bb1bbb55516L

    .restart local v2       #x:D
    const-string v1, "LN10"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 108
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_16
    const-wide v2, 0x3fe62e42fefa39efL

    .restart local v2       #x:D
    const-string v1, "LN2"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 109
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_17
    const-wide v2, 0x3ff71547652b82feL

    .restart local v2       #x:D
    const-string v1, "LOG2E"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 110
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_18
    const-wide v2, 0x3fdbcb7b1526e50eL

    .restart local v2       #x:D
    const-string v1, "LOG10E"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 111
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_19
    const-wide v2, 0x3fe6a09e667f3bcdL

    .restart local v2       #x:D
    const-string v1, "SQRT1_2"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 112
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #x:D
    :pswitch_1a
    const-wide v2, 0x3ff6a09e667f3bcdL

    .restart local v2       #x:D
    const-string v1, "SQRT2"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 78
    nop

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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
