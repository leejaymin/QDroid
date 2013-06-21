.class final Lorg/a/a/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# instance fields
.field protected a:I

.field protected b:I

.field private final c:Lorg/a/a/d;


# direct methods
.method protected constructor <init>(Lorg/a/a/d;II)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/f;->c:Lorg/a/a/d;

    if-le p3, v0, :cond_0

    :goto_0
    iput p2, p0, Lorg/a/a/d/f;->a:I

    iput v0, p0, Lorg/a/a/d/f;->b:I

    return-void

    :cond_0
    move v0, p3

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/a/a/d/f;->b:I

    return v0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 13

    iget-object v0, p0, Lorg/a/a/d/f;->c:Lorg/a/a/d;

    invoke-virtual {p1}, Lorg/a/a/d/q;->a()Lorg/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v0

    iget v1, p0, Lorg/a/a/d/f;->b:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v4

    invoke-virtual {v4}, Lorg/a/a/k;->d()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    const/4 v6, 0x0

    move v10, v6

    move-wide v11, v4

    move-wide v5, v2

    move v2, v10

    move-wide v3, v11

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v7, p3, v2

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0xa

    div-long/2addr v3, v8

    const/16 v8, 0x30

    sub-int/2addr v7, v8

    int-to-long v7, v7

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0xa

    div-long v3, v5, v3

    if-nez v2, :cond_1

    xor-int/lit8 v0, p3, -0x1

    :goto_1
    return v0

    :cond_1
    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    xor-int/lit8 v0, p3, -0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/a/a/c/l;

    invoke-static {}, Lorg/a/a/d;->a()Lorg/a/a/d;

    move-result-object v5

    sget-object v6, Lorg/a/a/c/j;->a:Lorg/a/a/k;

    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v0

    invoke-direct {v1, v5, v6, v0}, Lorg/a/a/c/l;-><init>(Lorg/a/a/d;Lorg/a/a/k;Lorg/a/a/k;)V

    long-to-int v0, v3

    invoke-virtual {p1, v1, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/c;I)V

    add-int v0, p3, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lorg/a/a/d/f;->c:Lorg/a/a/d;

    invoke-virtual {v0, p4}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v0

    iget v1, p0, Lorg/a/a/d/f;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p2, p3}, Lorg/a/a/c;->i(J)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_b

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/16 v1, 0x30

    :try_start_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Lorg/a/a/d/c;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/k;->d()J

    move-result-wide v4

    iget v0, p0, Lorg/a/a/d/f;->b:I

    :goto_4
    packed-switch v0, :pswitch_data_0

    const-wide/16 v6, 0x1

    :goto_5
    mul-long v8, v4, v6

    div-long/2addr v8, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :pswitch_0
    const-wide/16 v6, 0xa

    goto :goto_5

    :pswitch_1
    const-wide/16 v6, 0x64

    goto :goto_5

    :pswitch_2
    const-wide/16 v6, 0x3e8

    goto :goto_5

    :pswitch_3
    const-wide/16 v6, 0x2710

    goto :goto_5

    :pswitch_4
    const-wide/32 v6, 0x186a0

    goto :goto_5

    :pswitch_5
    const-wide/32 v6, 0xf4240

    goto :goto_5

    :pswitch_6
    const-wide/32 v6, 0x989680

    goto :goto_5

    :pswitch_7
    const-wide/32 v6, 0x5f5e100

    goto :goto_5

    :pswitch_8
    const-wide/32 v6, 0x3b9aca00

    goto :goto_5

    :pswitch_9
    const-wide v6, 0x2540be400L

    goto :goto_5

    :pswitch_a
    const-wide v6, 0x174876e800L

    goto :goto_5

    :pswitch_b
    const-wide v6, 0xe8d4a51000L

    goto :goto_5

    :pswitch_c
    const-wide v6, 0x9184e72a000L

    goto :goto_5

    :pswitch_d
    const-wide v6, 0x5af3107a4000L

    goto :goto_5

    :pswitch_e
    const-wide v6, 0x38d7ea4c68000L

    goto :goto_5

    :pswitch_f
    const-wide v6, 0x2386f26fc10000L

    goto :goto_5

    :pswitch_10
    const-wide v6, 0x16345785d8a0000L

    goto :goto_5

    :pswitch_11
    const-wide v6, 0xde0b6b3a7640000L

    goto :goto_5

    :cond_3
    const/4 v8, 0x2

    new-array v8, v8, [J

    const/4 v9, 0x0

    mul-long/2addr v2, v6

    div-long/2addr v2, v4

    aput-wide v2, v8, v9

    const/4 v2, 0x1

    int-to-long v3, v0

    aput-wide v3, v8, v2

    const/4 v0, 0x0

    aget-wide v2, v8, v0

    const/4 v0, 0x1

    aget-wide v4, v8, v0

    long-to-int v0, v4

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, v2

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_7
    if-ge v3, v1, :cond_6

    if-eqz p1, :cond_5

    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_8

    :cond_6
    if-ge v0, v1, :cond_9

    move v10, v3

    move v3, v1

    move v1, v10

    :goto_9
    if-ge v0, v3, :cond_7

    const/4 v4, 0x1

    if-le v1, v4, :cond_7

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_7

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_9

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_3

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
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/a/a/d/f;->b:I

    return v0
.end method
