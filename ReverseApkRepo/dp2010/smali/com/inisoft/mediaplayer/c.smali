.class public final Lcom/inisoft/mediaplayer/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:Ljava/nio/charset/Charset;

.field private c:Z


# direct methods
.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/c;->c:Z

    iput-object p1, p0, Lcom/inisoft/mediaplayer/c;->a:[B

    invoke-static {}, Lcom/inisoft/mediaplayer/c;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/c;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static a()Ljava/nio/charset/Charset;
    .locals 1

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/nio/charset/Charset;
    .locals 13

    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/inisoft/mediaplayer/c;

    invoke-direct {v4, v0}, Lcom/inisoft/mediaplayer/c;-><init>([B)V

    invoke-static {}, Lcom/inisoft/mediaplayer/c;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v4, Lcom/inisoft/mediaplayer/c;->b:Ljava/nio/charset/Charset;

    :goto_0
    iget-object v0, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, -0x11

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, -0x45

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/16 v1, -0x41

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/c;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, v4, Lcom/inisoft/mediaplayer/c;->b:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget-object v0, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_6

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    array-length v5, v0

    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v12

    :goto_5
    add-int/lit8 v3, v5, -0x6

    if-lt v2, v3, :cond_8

    :cond_7
    if-nez v0, :cond_1c

    iget-boolean v0, v4, Lcom/inisoft/mediaplayer/c;->c:Z

    if-nez v0, :cond_1d

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v3, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    aget-byte v6, v3, v2

    iget-object v3, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v3, v7

    iget-object v3, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, v3, v8

    iget-object v3, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    add-int/lit8 v9, v2, 0x3

    aget-byte v9, v3, v9

    iget-object v3, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    add-int/lit8 v10, v2, 0x4

    aget-byte v10, v3, v10

    iget-object v3, v4, Lcom/inisoft/mediaplayer/c;->a:[B

    add-int/lit8 v11, v2, 0x5

    aget-byte v11, v3, v11

    if-gez v6, :cond_9

    const/4 v0, 0x1

    const/16 v3, -0x40

    if-gt v3, v6, :cond_a

    const/16 v3, -0x21

    if-gt v6, v3, :cond_a

    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_b

    invoke-static {v7}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    :cond_9
    :goto_7
    if-eqz v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    :cond_b
    const/16 v3, -0x20

    if-gt v3, v6, :cond_d

    const/16 v3, -0x11

    if-gt v6, v3, :cond_d

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_f

    invoke-static {v7}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v8}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    :cond_f
    const/16 v3, -0x10

    if-gt v3, v6, :cond_11

    const/16 v3, -0x9

    if-gt v6, v3, :cond_11

    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_13

    invoke-static {v7}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v8}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v9}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    add-int/lit8 v2, v2, 0x3

    goto :goto_7

    :cond_13
    const/4 v3, -0x8

    if-gt v3, v6, :cond_15

    const/4 v3, -0x5

    if-gt v6, v3, :cond_15

    const/4 v3, 0x1

    :goto_a
    if-eqz v3, :cond_17

    invoke-static {v7}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v8}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v9}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v10}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_7

    :cond_15
    const/4 v3, 0x0

    goto :goto_a

    :cond_16
    add-int/lit8 v2, v2, 0x4

    goto :goto_7

    :cond_17
    const/4 v3, -0x4

    if-gt v3, v6, :cond_19

    const/4 v3, -0x3

    if-gt v6, v3, :cond_19

    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_1b

    invoke-static {v7}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v8}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v9}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v10}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v11}, Lcom/inisoft/mediaplayer/c;->a(B)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_19
    const/4 v3, 0x0

    goto :goto_b

    :cond_1a
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_7

    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_1c
    if-eqz v1, :cond_1d

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_2

    :cond_1d
    iget-object v0, v4, Lcom/inisoft/mediaplayer/c;->b:Ljava/nio/charset/Charset;

    goto/16 :goto_2
.end method

.method private static a(B)Z
    .locals 1

    const/16 v0, -0x80

    if-gt v0, p0, :cond_0

    const/16 v0, -0x41

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
