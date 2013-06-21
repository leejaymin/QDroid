.class public final La/c/d;
.super La/c/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:I

.field private static final h:Ljava/security/SecureRandom;


# instance fields
.field private i:[B

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[B

.field private o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, La/c/d;->h:Ljava/security/SecureRandom;

    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v0}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, La/c/d;->b:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c/d;->c:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c/d;->d:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c/d;->e:Ljava/lang/String;

    :try_start_0
    invoke-static {}, La/b/g;->a()La/b/g;

    move-result-object v0

    invoke-virtual {v0}, La/b/g;->g()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sput-object v0, La/c/d;->f:Ljava/lang/String;

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/c/d;->g:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, La/c/a;-><init>()V

    iput-object v0, p0, La/c/d;->n:[B

    iput-object v0, p0, La/c/d;->o:[B

    sget v0, La/c/d;->b:I

    invoke-virtual {p0, v0}, La/c/d;->a(I)V

    sget-object v0, La/c/d;->c:Ljava/lang/String;

    iput-object v0, p0, La/c/d;->k:Ljava/lang/String;

    sget-object v0, La/c/d;->d:Ljava/lang/String;

    iput-object v0, p0, La/c/d;->l:Ljava/lang/String;

    sget-object v0, La/c/d;->f:Ljava/lang/String;

    iput-object v0, p0, La/c/d;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(La/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v8, 0x10

    const/4 v7, 0x0

    invoke-direct {p0}, La/c/a;-><init>()V

    iput-object v3, p0, La/c/d;->n:[B

    iput-object v3, p0, La/c/d;->o:[B

    if-nez p1, :cond_4

    sget v0, La/c/d;->b:I

    :goto_0
    or-int/2addr v0, p6

    invoke-virtual {p0, v0}, La/c/d;->a(I)V

    if-nez p5, :cond_0

    sget-object p5, La/c/d;->f:Ljava/lang/String;

    :cond_0
    iput-object p5, p0, La/c/d;->m:Ljava/lang/String;

    iput-object p3, p0, La/c/d;->k:Ljava/lang/String;

    iput-object p4, p0, La/c/d;->l:Ljava/lang/String;

    sget v0, La/c/d;->g:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_c

    :cond_2
    :goto_1
    iput-object v3, p0, La/c/d;->i:[B

    invoke-static {p1, p2}, La/c/d;->a(La/c/c;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, La/c/d;->j:[B

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p1}, La/c/c;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    or-int/lit16 v0, v0, 0x200

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0}, La/c/d;->a()I

    move-result v0

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-array v0, v2, [B

    sget-object v1, La/c/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0, v4, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p2}, La/d/t;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, La/c/c;->c()[B

    move-result-object v2

    invoke-static {v1, v2, v0}, La/d/t;->a([B[B[B)[B

    move-result-object v2

    iput-object v0, p0, La/c/d;->i:[B

    iput-object v2, p0, La/c/d;->j:[B

    invoke-virtual {p0}, La/c/d;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v8, :cond_3

    new-array v2, v8, [B

    invoke-virtual {p1}, La/c/c;->c()[B

    move-result-object v3

    invoke-static {v3, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v7, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, La/e/f;

    invoke-direct {v0}, La/e/f;-><init>()V

    invoke-virtual {v0, v1}, La/e/f;->update([B)V

    invoke-virtual {v0}, La/e/f;->digest()[B

    move-result-object v0

    new-instance v1, La/e/c;

    invoke-direct {v1, v0}, La/e/c;-><init>([B)V

    invoke-virtual {v1, v2}, La/e/c;->update([B)V

    invoke-virtual {v1}, La/e/c;->digest()[B

    move-result-object v0

    invoke-virtual {p0}, La/c/d;->a()I

    move-result v1

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    new-array v1, v8, [B

    iput-object v1, p0, La/c/d;->n:[B

    sget-object v1, La/c/d;->h:Ljava/security/SecureRandom;

    iget-object v2, p0, La/c/d;->n:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v1, v8, [B

    new-instance v2, La/e/g;

    invoke-direct {v2, v0}, La/e/g;-><init>([B)V

    iget-object v0, p0, La/c/d;->n:[B

    invoke-virtual {v2, v0, v7, v1, v7}, La/e/g;->a([BI[BI)V

    iput-object v1, p0, La/c/d;->o:[B

    goto :goto_2

    :cond_6
    iput-object v0, p0, La/c/d;->n:[B

    iget-object v0, p0, La/c/d;->n:[B

    iput-object v0, p0, La/c/d;->o:[B

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, p2}, La/c/d;->a(La/c/c;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, La/c/d;->i:[B

    iput-object v0, p0, La/c/d;->j:[B

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p3, p4, p2}, La/d/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-array v1, v4, [B

    sget-object v2, La/c/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v1, v3

    :goto_4
    iput-object v1, p0, La/c/d;->i:[B

    new-array v2, v4, [B

    sget-object v1, La/c/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    if-eqz p1, :cond_8

    if-nez v0, :cond_a

    :cond_8
    :goto_5
    iput-object v3, p0, La/c/d;->j:[B

    invoke-virtual {p0}, La/c/d;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v8, :cond_3

    new-instance v1, La/e/c;

    invoke-direct {v1, v0}, La/e/c;-><init>([B)V

    iget-object v0, p0, La/c/d;->j:[B

    invoke-virtual {v1, v0, v7, v8}, La/e/c;->update([BII)V

    invoke-virtual {v1}, La/e/c;->digest()[B

    move-result-object v0

    invoke-virtual {p0}, La/c/d;->a()I

    move-result v1

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    new-array v1, v8, [B

    iput-object v1, p0, La/c/d;->n:[B

    sget-object v1, La/c/d;->h:Ljava/security/SecureRandom;

    iget-object v2, p0, La/c/d;->n:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v1, v8, [B

    new-instance v2, La/e/g;

    invoke-direct {v2, v0}, La/e/g;-><init>([B)V

    iget-object v0, p0, La/c/d;->n:[B

    invoke-virtual {v2, v0, v7, v1, v7}, La/e/g;->a([BI[BI)V

    iput-object v1, p0, La/c/d;->o:[B

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, La/c/c;->c()[B

    move-result-object v2

    invoke-static {p3, p4, p2, v2, v1}, La/d/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v1

    goto :goto_4

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0xa9730b66800L

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    mul-long/2addr v3, v5

    invoke-virtual {p1}, La/c/c;->c()[B

    move-result-object v1

    invoke-virtual {p1}, La/c/c;->d()[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, La/d/t;->a([B[B[BJ[B)[B

    move-result-object v3

    goto :goto_5

    :cond_b
    iput-object v0, p0, La/c/d;->n:[B

    iget-object v0, p0, La/c/d;->n:[B

    iput-object v0, p0, La/c/d;->o:[B

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p1}, La/c/c;->c()[B

    move-result-object v0

    invoke-static {p2, v0}, La/d/t;->a(Ljava/lang/String;[B)[B

    move-result-object v3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static a(La/c/c;Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, La/c/c;->c()[B

    move-result-object v0

    invoke-static {p1, v0}, La/d/t;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final c()[B
    .locals 1

    iget-object v0, p0, La/c/d;->n:[B

    return-object v0
.end method

.method public final d()[B
    .locals 21

    :try_start_0
    invoke-virtual/range {p0 .. p0}, La/c/d;->a()I

    move-result v13

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v6, v4

    :goto_0
    if-eqz v6, :cond_1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, La/c/d;->k:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v6, :cond_2

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_2
    move-object v12, v4

    :goto_3
    if-eqz v12, :cond_3

    array-length v4, v12

    move v11, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, La/c/d;->l:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v6, :cond_4

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_5
    move-object v10, v4

    :goto_6
    if-eqz v10, :cond_5

    array-length v4, v10

    move v9, v4

    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, La/c/d;->m:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v6, :cond_6

    const-string v4, "UTF-16LE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    :goto_8
    move-object v8, v4

    :goto_9
    if-eqz v8, :cond_7

    array-length v4, v8

    move v7, v4

    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, La/c/d;->i:[B

    if-eqz v14, :cond_8

    array-length v4, v14

    move v6, v4

    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, La/c/d;->j:[B

    if-eqz v15, :cond_9

    array-length v4, v15

    move v5, v4

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, La/c/d;->o:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    array-length v4, v0

    :goto_d
    add-int/lit8 v17, v11, 0x40

    add-int v17, v17, v9

    add-int v17, v17, v7

    add-int v17, v17, v6

    add-int v17, v17, v5

    add-int v4, v4, v17

    new-array v4, v4, [B

    sget-object v17, La/c/d;->a:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v17, 0x8

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, La/c/d;->a([BII)V

    const/16 v17, 0xc

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1, v14}, La/c/d;->a([BII[B)V

    add-int/lit8 v6, v6, 0x40

    const/16 v14, 0x14

    invoke-static {v4, v14, v6, v15}, La/c/d;->a([BII[B)V

    add-int/2addr v5, v6

    const/16 v6, 0x1c

    invoke-static {v4, v6, v5, v12}, La/c/d;->a([BII[B)V

    add-int/2addr v5, v11

    const/16 v6, 0x24

    invoke-static {v4, v6, v5, v10}, La/c/d;->a([BII[B)V

    add-int/2addr v5, v9

    const/16 v6, 0x2c

    invoke-static {v4, v6, v5, v8}, La/c/d;->a([BII[B)V

    add-int/2addr v5, v7

    const/16 v6, 0x34

    move-object/from16 v0, v16

    invoke-static {v4, v6, v5, v0}, La/c/d;->a([BII[B)V

    const/16 v5, 0x3c

    invoke-static {v4, v5, v13}, La/c/d;->a([BII)V

    return-object v4

    :cond_0
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_0

    :cond_1
    invoke-static {}, La/c/d;->b()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_8

    :cond_7
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_a

    :cond_8
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_b

    :cond_9
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_c

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_d

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    move-object v8, v4

    goto/16 :goto_9

    :cond_c
    move-object v10, v4

    goto/16 :goto_6

    :cond_d
    move-object v12, v4

    goto/16 :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, La/c/d;->l:Ljava/lang/String;

    iget-object v1, p0, La/c/d;->k:Ljava/lang/String;

    iget-object v2, p0, La/c/d;->m:Ljava/lang/String;

    iget-object v3, p0, La/c/d;->i:[B

    iget-object v4, p0, La/c/d;->j:[B

    iget-object v5, p0, La/c/d;->o:[B

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Type3Message[domain="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",user="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",workstation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lmResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ntResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v5, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/c/d;->a()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
