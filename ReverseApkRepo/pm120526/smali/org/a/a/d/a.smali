.class public final Lorg/a/a/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:[Lorg/a/a/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/a/a/d/a;->a:Ljava/util/Map;

    const/16 v0, 0x19

    new-array v0, v0, [Lorg/a/a/d/b;

    sput-object v0, Lorg/a/a/d/a;->b:[Lorg/a/a/d/b;

    return-void
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    aget v1, p1, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v8, :cond_0

    if-le v3, v9, :cond_1

    :cond_0
    if-lt v3, v10, :cond_2

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v1

    move v1, v6

    :goto_1
    if-ge v3, v2, :cond_a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v2, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_2

    :cond_5
    if-nez v1, :cond_9

    if-lt v4, v8, :cond_6

    if-le v4, v9, :cond_7

    :cond_6
    if-lt v4, v10, :cond_9

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_9

    :cond_7
    add-int/lit8 v1, v3, -0x1

    :cond_8
    :goto_3
    aput v1, p1, v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Lorg/a/a/d/b;
    .locals 1

    invoke-static {p0}, Lorg/a/a/d/a;->c(Ljava/lang/String;)Lorg/a/a/d/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/a/a/d/c;Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v8, [I

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_a

    aput v2, v1, v7

    invoke-static {p1, v1}, Lorg/a/a/d/a;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    aget v3, v1, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Illegal pattern component: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-static {}, Lorg/a/a/d;->w()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->a(Lorg/a/a/d;)Lorg/a/a/d/c;

    :goto_1
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lorg/a/a/d;->v()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v4}, Lorg/a/a/d/c;->b(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto :goto_1

    :sswitch_2
    if-ne v4, v9, :cond_0

    add-int/lit8 v2, v3, 0x1

    if-ge v2, v0, :cond_c

    aget v2, v1, v7

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v7

    invoke-static {p1, v1}, Lorg/a/a/d/a;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/d/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v7

    :goto_2
    aget v4, v1, v7

    sub-int/2addr v4, v8

    aput v4, v1, v7

    :goto_3
    packed-switch v5, :pswitch_data_0

    new-instance v4, Lorg/a/a/b;

    invoke-direct {v4}, Lorg/a/a/b;-><init>()V

    invoke-virtual {v4}, Lorg/a/a/b;->c()I

    move-result v4

    const/16 v5, 0x1e

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4, v2}, Lorg/a/a/d/c;->a(IZ)Lorg/a/a/d/c;

    goto :goto_1

    :pswitch_0
    new-instance v4, Lorg/a/a/b;

    invoke-direct {v4}, Lorg/a/a/b;-><init>()V

    invoke-virtual {v4}, Lorg/a/a/b;->d()I

    move-result v4

    const/16 v5, 0x1e

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4, v2}, Lorg/a/a/d/c;->b(IZ)Lorg/a/a/d/c;

    goto :goto_1

    :cond_0
    const/16 v2, 0x9

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v0, :cond_2

    aget v6, v1, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v7

    invoke-static {p1, v1}, Lorg/a/a/d/a;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/a/a/d/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    :cond_1
    aget v6, v1, v7

    sub-int/2addr v6, v8

    aput v6, v1, v7

    :cond_2
    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lorg/a/a/d;->t()Lorg/a/a/d;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v2}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lorg/a/a/d;->p()Lorg/a/a/d;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v2}, Lorg/a/a/d/c;->b(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, v4, v2}, Lorg/a/a/d/c;->b(II)Lorg/a/a/d/c;

    goto :goto_1

    :sswitch_6
    if-lt v4, v11, :cond_4

    if-lt v4, v10, :cond_3

    invoke-static {}, Lorg/a/a/d;->r()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->a(Lorg/a/a/d;)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lorg/a/a/d;->r()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->b(Lorg/a/a/d;)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lorg/a/a/d/c;->e(I)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0, v4}, Lorg/a/a/d/c;->d(I)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_8
    invoke-static {}, Lorg/a/a/d;->k()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->a(Lorg/a/a/d;)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_9
    invoke-static {}, Lorg/a/a/d;->j()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v9}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0, v4}, Lorg/a/a/d/c;->c(I)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_b
    invoke-static {}, Lorg/a/a/d;->h()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v9}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_c
    invoke-static {}, Lorg/a/a/d;->i()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v9}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p0, v4}, Lorg/a/a/d/c;->b(I)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p0, v4}, Lorg/a/a/d/c;->a(I)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual {p0, v4, v4}, Lorg/a/a/d/c;->a(II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_10
    invoke-static {}, Lorg/a/a/d;->l()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v8}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_11
    if-lt v4, v10, :cond_5

    invoke-static {}, Lorg/a/a/d;->l()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->a(Lorg/a/a/d;)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lorg/a/a/d;->l()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->b(Lorg/a/a/d;)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_12
    invoke-static {}, Lorg/a/a/d;->n()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v11}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_13
    invoke-static {}, Lorg/a/a/d;->o()Lorg/a/a/d;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v9}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_14
    if-lt v4, v10, :cond_6

    invoke-virtual {p0}, Lorg/a/a/d/c;->b()Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/a/a/d/c;->c()Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_15
    if-ne v4, v8, :cond_7

    const-string v2, "Z"

    invoke-virtual {p0, v2, v7}, Lorg/a/a/d/c;->a(Ljava/lang/String;Z)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_7
    if-ne v4, v9, :cond_8

    const-string v2, "Z"

    invoke-virtual {p0, v2, v8}, Lorg/a/a/d/c;->a(Ljava/lang/String;Z)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/a/a/d/c;->d()Lorg/a/a/d/c;

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/a/a/d/c;->a(C)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/a/a/d/c;->a(Ljava/lang/String;)Lorg/a/a/d/c;

    goto/16 :goto_1

    :cond_a
    return-void

    :cond_b
    move v2, v8

    goto/16 :goto_2

    :cond_c
    move v2, v8

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_16
        0x43 -> :sswitch_1
        0x44 -> :sswitch_12
        0x45 -> :sswitch_11
        0x47 -> :sswitch_0
        0x48 -> :sswitch_a
        0x4b -> :sswitch_c
        0x4d -> :sswitch_6
        0x53 -> :sswitch_f
        0x59 -> :sswitch_2
        0x5a -> :sswitch_15
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_10
        0x68 -> :sswitch_9
        0x6b -> :sswitch_b
        0x6d -> :sswitch_d
        0x73 -> :sswitch_e
        0x77 -> :sswitch_13
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_14
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x59 -> :sswitch_3
        0x78 -> :sswitch_4
        0x79 -> :sswitch_5
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :sswitch_0
    move v0, v3

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x59 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_0
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)Lorg/a/a/d/b;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lorg/a/a/d/a;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/a/a/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/d/b;

    if-nez v0, :cond_2

    new-instance v0, Lorg/a/a/d/c;

    invoke-direct {v0}, Lorg/a/a/d/c;-><init>()V

    invoke-static {v0, p0}, Lorg/a/a/d/a;->a(Lorg/a/a/d/c;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/a/a/d/c;->a()Lorg/a/a/d/b;

    move-result-object v0

    sget-object v2, Lorg/a/a/d/a;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
