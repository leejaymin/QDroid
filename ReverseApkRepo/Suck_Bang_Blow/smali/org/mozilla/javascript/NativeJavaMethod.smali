.class public Lorg/mozilla/javascript/NativeJavaMethod;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeJavaMethod.java"


# static fields
.field private static final PREFERENCE_AMBIGUOUS:I = 0x3

.field private static final PREFERENCE_EQUAL:I = 0x0

.field private static final PREFERENCE_FIRST_ARG:I = 0x1

.field private static final PREFERENCE_SECOND_ARG:I = 0x2

.field private static final debug:Z = false

.field static final serialVersionUID:J = -0x2fbeb1018d019700L


# instance fields
.field private functionName:Ljava/lang/String;

.field methods:[Lorg/mozilla/javascript/MemberBox;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "name"

    .prologue
    .line 74
    new-instance v0, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V
    .locals 2
    .parameter "method"
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 68
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mozilla/javascript/MemberBox;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 70
    return-void
.end method

.method constructor <init>([Lorg/mozilla/javascript/MemberBox;)V
    .locals 1
    .parameter "methods"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 62
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    .line 64
    return-void
.end method

.method static findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I
    .locals 19
    .parameter "cx"
    .parameter "methodsOrCtors"
    .parameter "args"

    .prologue
    .line 281
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-nez v5, :cond_0

    .line 282
    const/16 p0, -0x1

    .line 438
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 283
    .restart local p0
    .restart local p1
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 284
    const/16 p0, 0x0

    aget-object v5, p1, p0

    .line 285
    .end local p0
    .local v5, member:Lorg/mozilla/javascript/MemberBox;
    move-object v0, v5

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    move-object/from16 p1, v0

    .line 286
    .local p1, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p0, v0

    .line 288
    .local p0, alength:I
    iget-boolean v5, v5, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .end local v5           #member:Lorg/mozilla/javascript/MemberBox;
    if-eqz v5, :cond_1

    .line 289
    add-int/lit8 p0, p0, -0x1

    .line 290
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    move/from16 v0, p0

    move v1, v5

    if-le v0, v1, :cond_2

    .line 291
    const/16 p0, -0x1

    goto :goto_0

    .line 294
    :cond_1
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    move/from16 v0, p0

    move v1, v5

    if-eq v0, v1, :cond_2

    .line 295
    const/16 p0, -0x1

    goto :goto_0

    .line 298
    :cond_2
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    move v0, v5

    move/from16 v1, p0

    if-eq v0, v1, :cond_4

    .line 299
    aget-object v6, p2, v5

    aget-object v7, p1, v5

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 302
    const/16 p0, -0x1

    goto :goto_0

    .line 298
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 306
    :cond_4
    const/16 p0, 0x0

    goto :goto_0

    .line 309
    .end local v5           #j:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, methodsOrCtors:[Lorg/mozilla/javascript/MemberBox;
    :cond_5
    const/4 v7, -0x1

    .line 310
    .local v7, firstBestFit:I
    const/4 v5, 0x0

    .line 311
    .local v5, extraBestFits:[I
    const/4 v6, 0x0

    .line 314
    .local v6, extraBestFitsCount:I
    const/4 v8, 0x0

    .local v8, i:I
    move v12, v8

    .end local v8           #i:I
    .local v12, i:I
    move v10, v6

    .end local v6           #extraBestFitsCount:I
    .local v10, extraBestFitsCount:I
    move-object v9, v5

    .end local v5           #extraBestFits:[I
    .local v9, extraBestFits:[I
    move v11, v7

    .end local v7           #firstBestFit:I
    .local v11, firstBestFit:I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-ge v12, v5, :cond_16

    .line 315
    aget-object v14, p1, v12

    .line 316
    .local v14, member:Lorg/mozilla/javascript/MemberBox;
    iget-object v6, v14, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 317
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v5, v6

    .line 318
    .local v5, alength:I
    iget-boolean v7, v14, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    if-eqz v7, :cond_6

    .line 319
    add-int/lit8 v5, v5, -0x1

    .line 320
    move-object/from16 v0, p2

    array-length v0, v0

    move v7, v0

    if-le v5, v7, :cond_7

    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .local v7, extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    move v8, v11

    .line 314
    .end local v11           #firstBestFit:I
    .local v8, firstBestFit:I
    :goto_3
    add-int/lit8 v5, v12, 0x1

    .end local v12           #i:I
    .local v5, i:I
    move v12, v5

    .end local v5           #i:I
    .restart local v12       #i:I
    move v10, v7

    .end local v7           #extraBestFitsCount:I
    .restart local v10       #extraBestFitsCount:I
    move-object v9, v6

    .end local v6           #extraBestFits:[I
    .restart local v9       #extraBestFits:[I
    move v11, v8

    .end local v8           #firstBestFit:I
    .restart local v11       #firstBestFit:I
    goto :goto_2

    .line 324
    .local v5, alength:I
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p2

    array-length v0, v0

    move v7, v0

    if-eq v5, v7, :cond_7

    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .restart local v7       #extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    move v8, v11

    .line 325
    .end local v11           #firstBestFit:I
    .restart local v8       #firstBestFit:I
    goto :goto_3

    .line 328
    .end local v7           #extraBestFitsCount:I
    .end local v8           #firstBestFit:I
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_7
    const/4 v7, 0x0

    .local v7, j:I
    :goto_4
    if-ge v7, v5, :cond_9

    .line 329
    aget-object v8, p2, v7

    aget-object v13, v6, v7

    invoke-static {v8, v13}, Lorg/mozilla/javascript/NativeJavaObject;->canConvert(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_8

    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .local v7, extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    move v8, v11

    .line 332
    .end local v11           #firstBestFit:I
    .restart local v8       #firstBestFit:I
    goto :goto_3

    .line 328
    .end local v8           #firstBestFit:I
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local v7, j:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 335
    :cond_9
    if-gez v11, :cond_a

    .line 337
    move v6, v12

    .end local v11           #firstBestFit:I
    .local v6, firstBestFit:I
    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .local v7, extraBestFitsCount:I
    move v8, v6

    .end local v6           #firstBestFit:I
    .restart local v8       #firstBestFit:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    goto :goto_3

    .line 343
    .end local v8           #firstBestFit:I
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local v7, j:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_a
    const/4 v7, 0x0

    .line 345
    .local v7, betterCount:I
    const/4 v13, 0x0

    .line 347
    .local v13, worseCount:I
    const/4 v8, -0x1

    .local v8, j:I
    move/from16 v16, v13

    .end local v13           #worseCount:I
    .local v16, worseCount:I
    move v13, v8

    .end local v8           #j:I
    .local v13, j:I
    move v8, v7

    .end local v7           #betterCount:I
    .local v8, betterCount:I
    :goto_5
    if-eq v13, v10, :cond_e

    .line 349
    const/4 v7, -0x1

    if-ne v13, v7, :cond_b

    .line 350
    move v7, v11

    .line 354
    .local v7, bestFitIndex:I
    :goto_6
    aget-object v7, p1, v7

    .line 355
    .local v7, bestFit:Lorg/mozilla/javascript/MemberBox;
    const/16 v15, 0xd

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v7}, Lorg/mozilla/javascript/MemberBox;->member()Ljava/lang/reflect/Member;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v15

    and-int/lit8 v15, v15, 0x1

    invoke-virtual {v14}, Lorg/mozilla/javascript/MemberBox;->member()Ljava/lang/reflect/Member;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 362
    invoke-virtual {v7}, Lorg/mozilla/javascript/MemberBox;->member()Ljava/lang/reflect/Member;

    move-result-object v7

    .end local v7           #bestFit:Lorg/mozilla/javascript/MemberBox;
    invoke-interface {v7}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_c

    .line 363
    add-int/lit8 v7, v8, 0x1

    .end local v8           #betterCount:I
    .local v7, betterCount:I
    move/from16 v15, v16

    .line 347
    .end local v16           #worseCount:I
    .local v15, worseCount:I
    :goto_7
    add-int/lit8 v8, v13, 0x1

    .end local v13           #j:I
    .local v8, j:I
    move v13, v8

    .end local v8           #j:I
    .restart local v13       #j:I
    move/from16 v16, v15

    .end local v15           #worseCount:I
    .restart local v16       #worseCount:I
    move v8, v7

    .end local v7           #betterCount:I
    .local v8, betterCount:I
    goto :goto_5

    .line 352
    :cond_b
    aget v7, v9, v13

    .local v7, bestFitIndex:I
    goto :goto_6

    .line 365
    .end local v7           #bestFitIndex:I
    :cond_c
    add-int/lit8 v7, v16, 0x1

    .end local v16           #worseCount:I
    .local v7, worseCount:I
    move v15, v7

    .end local v7           #worseCount:I
    .restart local v15       #worseCount:I
    move v7, v8

    .end local v8           #betterCount:I
    .local v7, betterCount:I
    goto :goto_7

    .line 367
    .end local v15           #worseCount:I
    .local v7, bestFit:Lorg/mozilla/javascript/MemberBox;
    .restart local v8       #betterCount:I
    .restart local v16       #worseCount:I
    :cond_d
    iget-boolean v15, v14, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object v0, v7

    iget-boolean v0, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    move/from16 v18, v0

    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v15

    move-object/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeJavaMethod;->preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    move-result v15

    .line 371
    .local v15, preference:I
    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 409
    .end local v7           #bestFit:Lorg/mozilla/javascript/MemberBox;
    .end local v15           #preference:I
    :cond_e
    add-int/lit8 v6, v10, 0x1

    if-ne v8, v6, :cond_14

    .line 413
    .end local v6           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move v7, v12

    .line 414
    .end local v11           #firstBestFit:I
    .local v7, firstBestFit:I
    const/4 v6, 0x0

    .end local v10           #extraBestFitsCount:I
    .local v6, extraBestFitsCount:I
    move v8, v7

    .end local v7           #firstBestFit:I
    .local v8, firstBestFit:I
    move v7, v6

    .end local v6           #extraBestFitsCount:I
    .local v7, extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    goto/16 :goto_3

    .line 373
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local v7, bestFit:Lorg/mozilla/javascript/MemberBox;
    .local v8, betterCount:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    .restart local v15       #preference:I
    :cond_f
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 374
    add-int/lit8 v7, v8, 0x1

    .end local v8           #betterCount:I
    .local v7, betterCount:I
    move/from16 v15, v16

    .end local v16           #worseCount:I
    .local v15, worseCount:I
    goto :goto_7

    .line 375
    .local v7, bestFit:Lorg/mozilla/javascript/MemberBox;
    .restart local v8       #betterCount:I
    .local v15, preference:I
    .restart local v16       #worseCount:I
    :cond_10
    const/16 v17, 0x2

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 376
    add-int/lit8 v7, v16, 0x1

    .end local v16           #worseCount:I
    .local v7, worseCount:I
    move v15, v7

    .end local v7           #worseCount:I
    .local v15, worseCount:I
    move v7, v8

    .end local v8           #betterCount:I
    .local v7, betterCount:I
    goto :goto_7

    .line 378
    .local v7, bestFit:Lorg/mozilla/javascript/MemberBox;
    .restart local v8       #betterCount:I
    .local v15, preference:I
    .restart local v16       #worseCount:I
    :cond_11
    if-eqz v15, :cond_12

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 384
    :cond_12
    invoke-virtual {v7}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v6

    .end local v6           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz v6, :cond_1d

    invoke-virtual {v7}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v14}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .end local v7           #bestFit:Lorg/mozilla/javascript/MemberBox;
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 395
    const/4 v6, -0x1

    if-ne v13, v6, :cond_13

    .line 396
    move v6, v12

    .end local v11           #firstBestFit:I
    .local v6, firstBestFit:I
    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .local v7, extraBestFitsCount:I
    move v8, v6

    .end local v6           #firstBestFit:I
    .local v8, firstBestFit:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    goto/16 :goto_3

    .line 398
    .end local v6           #extraBestFits:[I
    .end local v7           #extraBestFitsCount:I
    .local v8, betterCount:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_13
    aput v12, v9, v13

    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .restart local v7       #extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .restart local v6       #extraBestFits:[I
    move v8, v11

    .end local v11           #firstBestFit:I
    .local v8, firstBestFit:I
    goto/16 :goto_3

    .line 415
    .end local v6           #extraBestFits:[I
    .end local v7           #extraBestFitsCount:I
    .end local v15           #preference:I
    .local v8, betterCount:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_14
    add-int/lit8 v6, v10, 0x1

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_15

    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .restart local v7       #extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .restart local v6       #extraBestFits:[I
    move v8, v11

    .end local v11           #firstBestFit:I
    .local v8, firstBestFit:I
    goto/16 :goto_3

    .line 423
    .end local v6           #extraBestFits:[I
    .end local v7           #extraBestFitsCount:I
    .local v8, betterCount:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_15
    if-nez v9, :cond_1c

    .line 425
    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    new-array v6, v6, [I

    .line 427
    .end local v9           #extraBestFits:[I
    .restart local v6       #extraBestFits:[I
    :goto_8
    aput v12, v6, v10

    .line 428
    add-int/lit8 v7, v10, 0x1

    .end local v10           #extraBestFitsCount:I
    .restart local v7       #extraBestFitsCount:I
    move v8, v11

    .end local v11           #firstBestFit:I
    .local v8, firstBestFit:I
    goto/16 :goto_3

    .line 433
    .end local v5           #alength:I
    .end local v6           #extraBestFits:[I
    .end local v7           #extraBestFitsCount:I
    .end local v8           #firstBestFit:I
    .end local v13           #j:I
    .end local v14           #member:Lorg/mozilla/javascript/MemberBox;
    .end local v16           #worseCount:I
    .restart local v9       #extraBestFits:[I
    .restart local v10       #extraBestFitsCount:I
    .restart local v11       #firstBestFit:I
    :cond_16
    if-gez v11, :cond_17

    .line 435
    const/16 p0, -0x1

    goto/16 :goto_0

    .line 436
    :cond_17
    if-nez v10, :cond_18

    move/from16 p0, v11

    .line 438
    goto/16 :goto_0

    .line 442
    :cond_18
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v5, buf:Ljava/lang/StringBuffer;
    const/16 p0, -0x1

    .local p0, j:I
    move/from16 v6, p0

    .end local p0           #j:I
    .local v6, j:I
    :goto_9
    if-eq v6, v10, :cond_1a

    .line 445
    const/16 p0, -0x1

    move v0, v6

    move/from16 v1, p0

    if-ne v0, v1, :cond_19

    .line 446
    move/from16 p0, v11

    .line 450
    .local p0, bestFitIndex:I
    :goto_a
    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    aget-object p0, p1, p0

    .end local p0           #bestFitIndex:I
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/MemberBox;->toJavaDeclaration()Ljava/lang/String;

    move-result-object p0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    add-int/lit8 p0, v6, 0x1

    .end local v6           #j:I
    .local p0, j:I
    move/from16 v6, p0

    .end local p0           #j:I
    .restart local v6       #j:I
    goto :goto_9

    .line 448
    :cond_19
    aget p0, v9, v6

    .local p0, bestFitIndex:I
    goto :goto_a

    .line 454
    .end local p0           #bestFitIndex:I
    :cond_1a
    aget-object p0, p1, v11

    .line 455
    .local p0, firstFitMember:Lorg/mozilla/javascript/MemberBox;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, memberName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .end local p0           #firstFitMember:Lorg/mozilla/javascript/MemberBox;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 458
    .local p0, memberClass:Ljava/lang/String;
    const/4 v7, 0x0

    aget-object p1, p1, v7

    .end local p1           #methodsOrCtors:[Lorg/mozilla/javascript/MemberBox;
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 459
    const-string p0, "msg.constructor.ambiguous"

    .end local p0           #memberClass:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 463
    .restart local p0       #memberClass:Ljava/lang/String;
    .restart local p2
    :cond_1b
    const-string p1, "msg.method.ambiguous"

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5           #buf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p2

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    .end local p0           #memberClass:Ljava/lang/String;
    throw p0

    .end local v6           #memberName:Ljava/lang/String;
    .local v5, alength:I
    .local v8, betterCount:I
    .restart local v13       #j:I
    .restart local v14       #member:Lorg/mozilla/javascript/MemberBox;
    .restart local v16       #worseCount:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1       #methodsOrCtors:[Lorg/mozilla/javascript/MemberBox;
    .restart local p2
    :cond_1c
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .local v6, extraBestFits:[I
    goto/16 :goto_8

    .end local v6           #extraBestFits:[I
    .restart local v9       #extraBestFits:[I
    .restart local v15       #preference:I
    :cond_1d
    move v7, v10

    .end local v10           #extraBestFitsCount:I
    .restart local v7       #extraBestFitsCount:I
    move-object v6, v9

    .end local v9           #extraBestFits:[I
    .restart local v6       #extraBestFits:[I
    move v8, v11

    .end local v11           #firstBestFit:I
    .local v8, firstBestFit:I
    goto/16 :goto_3
.end method

.method private static preferSignature([Ljava/lang/Object;[Ljava/lang/Class;Z[Ljava/lang/Class;Z)I
    .locals 10
    .parameter "args"
    .parameter
    .parameter "vararg1"
    .parameter
    .parameter "vararg2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z[",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .prologue
    .local p1, sig1:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local p3, sig2:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 487
    const/4 v5, 0x0

    .line 488
    .local v5, totalPreference:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v8, p0

    if-ge v1, v8, :cond_4

    .line 489
    if-eqz p2, :cond_1

    array-length v8, p1

    if-lt v1, v8, :cond_1

    array-length v8, p1

    sub-int/2addr v8, v9

    aget-object v8, p1, v8

    move-object v6, v8

    .line 490
    .local v6, type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eqz p4, :cond_2

    array-length v8, p3

    if-lt v1, v8, :cond_2

    array-length v8, p3

    sub-int/2addr v8, v9

    aget-object v8, p3, v8

    move-object v7, v8

    .line 491
    .local v7, type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    if-ne v6, v7, :cond_3

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v6           #type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    aget-object v8, p1, v1

    move-object v6, v8

    goto :goto_1

    .line 490
    .restart local v6       #type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    aget-object v8, p3, v1

    move-object v7, v8

    goto :goto_2

    .line 494
    .restart local v7       #type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    aget-object v0, p0, v1

    .line 498
    .local v0, arg:Ljava/lang/Object;
    invoke-static {v0, v6}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v3

    .line 499
    .local v3, rank1:I
    invoke-static {v0, v7}, Lorg/mozilla/javascript/NativeJavaObject;->getConversionWeight(Ljava/lang/Object;Ljava/lang/Class;)I

    move-result v4

    .line 502
    .local v4, rank2:I
    if-ge v3, v4, :cond_5

    .line 503
    const/4 v2, 0x1

    .line 521
    .local v2, preference:I
    :goto_3
    or-int/2addr v5, v2

    .line 523
    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    .line 527
    .end local v0           #arg:Ljava/lang/Object;
    .end local v2           #preference:I
    .end local v3           #rank1:I
    .end local v4           #rank2:I
    .end local v6           #type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    return v5

    .line 504
    .restart local v0       #arg:Ljava/lang/Object;
    .restart local v3       #rank1:I
    .restart local v4       #rank2:I
    .restart local v6       #type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    if-le v3, v4, :cond_6

    .line 505
    const/4 v2, 0x2

    .restart local v2       #preference:I
    goto :goto_3

    .line 508
    .end local v2           #preference:I
    :cond_6
    if-nez v3, :cond_9

    .line 509
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 510
    const/4 v2, 0x2

    .restart local v2       #preference:I
    goto :goto_3

    .line 511
    .end local v2           #preference:I
    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 512
    const/4 v2, 0x1

    .restart local v2       #preference:I
    goto :goto_3

    .line 514
    .end local v2           #preference:I
    :cond_8
    const/4 v2, 0x3

    .restart local v2       #preference:I
    goto :goto_3

    .line 517
    .end local v2           #preference:I
    :cond_9
    const/4 v2, 0x3

    .restart local v2       #preference:I
    goto :goto_3
.end method

.method private static printDebug(Ljava/lang/String;Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "member"
    .parameter "args"

    .prologue
    .line 551
    return-void
.end method

.method static scriptSignature([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "values"

    .prologue
    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v2, sig:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-eq v0, v5, :cond_9

    .line 87
    aget-object v3, p0, v0

    .line 90
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 91
    const-string v1, "null"

    .line 113
    .end local v3           #value:Ljava/lang/Object;
    .local v1, s:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 114
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1           #s:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 93
    const-string v1, "boolean"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 94
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 95
    const-string v1, "string"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v1           #s:Ljava/lang/String;
    :cond_3
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_4

    .line 97
    const-string v1, "number"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v1           #s:Ljava/lang/String;
    :cond_4
    instance-of v5, v3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_8

    .line 99
    instance-of v5, v3, Lorg/mozilla/javascript/Undefined;

    if-eqz v5, :cond_5

    .line 100
    const-string v1, "undefined"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 101
    .end local v1           #s:Ljava/lang/String;
    :cond_5
    instance-of v5, v3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v5, :cond_6

    .line 102
    check-cast v3, Lorg/mozilla/javascript/Wrapper;

    .end local v3           #value:Ljava/lang/Object;
    invoke-interface {v3}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v4

    .line 103
    .local v4, wrapped:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .end local v1           #s:Ljava/lang/String;
    .end local v4           #wrapped:Ljava/lang/Object;
    .restart local v3       #value:Ljava/lang/Object;
    :cond_6
    instance-of v5, v3, Lorg/mozilla/javascript/Function;

    if-eqz v5, :cond_7

    .line 105
    const-string v1, "function"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v1           #s:Ljava/lang/String;
    :cond_7
    const-string v1, "object"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v1           #s:Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_1

    .line 118
    .end local v1           #s:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 158
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "No methods defined for call"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    move-result v11

    .line 162
    .local v11, index:I
    if-gez v11, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 164
    .local v7, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2e

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x28

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x29

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 166
    .local v18, sig:Ljava/lang/String;
    const-string v23, "msg.java.no_such_method"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v23

    throw v23

    .line 169
    .end local v7           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v18           #sig:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v23, v0

    aget-object v13, v23, v11

    .line 170
    .local v13, meth:Lorg/mozilla/javascript/MemberBox;
    iget-object v6, v13, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 172
    .local v6, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object v0, v13

    iget-boolean v0, v0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 174
    move-object v0, v6

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object v14, v0

    .line 175
    .local v14, newArgs:[Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object v0, v6

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 176
    aget-object v23, p4, v10

    aget-object v24, v6, v10

    invoke-static/range {v23 .. v24}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v14, v10

    .line 175
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 183
    :cond_2
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v23, p4, v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/mozilla/javascript/NativeArray;

    move/from16 v23, v0

    if-nez v23, :cond_3

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/mozilla/javascript/NativeJavaArray;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 189
    :cond_3
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v23, p4, v23

    move-object v0, v6

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    aget-object v24, v6, v24

    invoke-static/range {v23 .. v24}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    .line 205
    .local v21, varArgs:Ljava/lang/Object;
    :cond_4
    move-object v0, v6

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aput-object v21, v14, v23

    .line 207
    move-object/from16 p4, v14

    .line 223
    .end local v14           #newArgs:[Ljava/lang/Object;
    .end local v21           #varArgs:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v13}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 224
    const/4 v12, 0x0

    .line 247
    :cond_6
    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 248
    .local v17, retval:Ljava/lang/Object;
    invoke-virtual {v13}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v19

    .line 258
    .local v19, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    .line 267
    .local v22, wrapped:Ljava/lang/Object;
    if-nez v22, :cond_7

    sget-object v23, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 268
    sget-object v22, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 270
    :cond_7
    return-object v22

    .line 193
    .end local v17           #retval:Ljava/lang/Object;
    .end local v19           #staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v22           #wrapped:Ljava/lang/Object;
    .restart local v14       #newArgs:[Ljava/lang/Object;
    :cond_8
    move-object v0, v6

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v23, v6, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 195
    .local v9, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    move-object v0, v6

    array-length v0, v0

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int/lit8 v23, v23, 0x1

    move-object v0, v9

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v21

    .line 197
    .restart local v21       #varArgs:Ljava/lang/Object;
    const/4 v10, 0x0

    :goto_1
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v23

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 198
    move-object v0, v6

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    add-int v23, v23, v10

    aget-object v23, p4, v23

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    .line 200
    .local v20, value:Ljava/lang/Object;
    move-object/from16 v0, v21

    move v1, v10

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 210
    .end local v9           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #i:I
    .end local v14           #newArgs:[Ljava/lang/Object;
    .end local v20           #value:Ljava/lang/Object;
    .end local v21           #varArgs:Ljava/lang/Object;
    :cond_9
    move-object/from16 v16, p4

    .line 211
    .local v16, origArgs:[Ljava/lang/Object;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v23, v0

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 212
    aget-object v5, p4, v10

    .line 213
    .local v5, arg:Ljava/lang/Object;
    aget-object v23, v6, v10

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 214
    .local v8, coerced:Ljava/lang/Object;
    if-eq v8, v5, :cond_b

    .line 215
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_a

    .line 216
    invoke-virtual/range {p4 .. p4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, [Ljava/lang/Object;

    .line 218
    .restart local p4
    :cond_a
    aput-object v8, p4, v10

    .line 211
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 226
    .end local v5           #arg:Ljava/lang/Object;
    .end local v8           #coerced:Ljava/lang/Object;
    .end local v16           #origArgs:[Ljava/lang/Object;
    :cond_c
    move-object/from16 v15, p3

    .line 227
    .local v15, o:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {v13}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 229
    .restart local v7       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    if-nez v15, :cond_d

    .line 230
    const-string v23, "msg.nonjava.method"

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v23

    throw v23

    .line 234
    :cond_d
    move-object v0, v15

    instance-of v0, v0, Lorg/mozilla/javascript/Wrapper;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 235
    move-object v0, v15

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v12

    .line 236
    .local v12, javaObject:Ljava/lang/Object;
    invoke-virtual {v7, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 240
    .end local v12           #javaObject:Ljava/lang/Object;
    :cond_e
    invoke-interface {v15}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v15

    goto :goto_3
.end method

.method decompile(II)Ljava/lang/String;
    .locals 3
    .parameter "indent"
    .parameter "flags"

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v1, sb:Ljava/lang/StringBuffer;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 126
    .local v0, justbody:Z
    :goto_0
    if-nez v0, :cond_0

    .line 127
    const-string v2, "function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v2, "() {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_0
    const-string v2, "/*\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    if-eqz v0, :cond_2

    const-string v2, "*/\n"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 125
    .end local v0           #justbody:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 133
    .restart local v0       #justbody:Z
    :cond_2
    const-string v2, "*/}\n"

    goto :goto_1
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaMethod;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v0, v4

    .local v0, N:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 142
    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 143
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v4, p0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v4}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
