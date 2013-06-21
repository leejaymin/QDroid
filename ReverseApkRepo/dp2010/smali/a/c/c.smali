.class public final La/c/c;
.super La/c/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:[B


# instance fields
.field private e:[B

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, La/c/c;->b:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v3, 0x0

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c/c;->c:Ljava/lang/String;

    new-array v0, v5, [B

    sget-object v3, La/c/c;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, La/c/c;->c:Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_0
    :goto_1
    array-length v7, v0

    new-array v3, v5, [B

    :try_start_1
    invoke-static {}, La/b/g;->a()La/b/g;

    move-result-object v4

    invoke-virtual {v4}, La/b/g;->g()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_2
    const-string v6, "UTF-16LE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :cond_1
    :goto_2
    array-length v8, v3

    if-lez v7, :cond_4

    add-int/lit8 v4, v7, 0x4

    move v6, v4

    :goto_3
    if-lez v8, :cond_5

    add-int/lit8 v4, v8, 0x4

    :goto_4
    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    if-lez v7, :cond_6

    invoke-static {v4, v5, v2}, La/c/c;->b([BII)V

    invoke-static {v4, v2, v7}, La/c/c;->b([BII)V

    const/4 v2, 0x4

    invoke-static {v0, v5, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v7, 0x4

    :goto_5
    if-lez v8, :cond_2

    invoke-static {v4, v0, v1}, La/c/c;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v8}, La/c/c;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v5, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sput-object v4, La/c/c;->d:[B

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, La/c/c;->b:I

    invoke-direct {p0, v0}, La/c/c;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, La/c/a;-><init>()V

    invoke-virtual {p0, p1}, La/c/c;->a(I)V

    iput-object v0, p0, La/c/c;->e:[B

    iput-object v0, p0, La/c/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v8, 0x28

    const/16 v2, 0x20

    const/16 v7, 0x8

    invoke-direct {p0}, La/c/a;-><init>()V

    move v0, v4

    :goto_0
    if-ge v0, v7, :cond_1

    aget-byte v1, p1, v0

    sget-object v5, La/c/c;->a:[B

    aget-byte v5, v5, v0

    if-eq v1, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an NTLMSSP message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v7}, La/c/c;->a([BI)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a Type 2 message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x14

    invoke-static {p1, v0}, La/c/c;->a([BI)I

    move-result v5

    invoke-virtual {p0, v5}, La/c/c;->a(I)V

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v1}, La/c/c;->b([BI)[B

    move-result-object v6

    array-length v1, v6

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_6

    const-string v0, "UTF-16LE"

    :goto_1
    invoke-direct {v1, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    :cond_3
    iput-object v0, p0, La/c/c;->f:Ljava/lang/String;

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_4

    aget-byte v1, p1, v0

    if-eqz v1, :cond_7

    new-array v0, v7, [B

    invoke-static {p1, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, La/c/c;->e:[B

    :cond_4
    const/16 v0, 0x10

    invoke-static {p1, v0}, La/c/c;->a([BI)I

    move-result v1

    if-eq v1, v2, :cond_5

    array-length v0, p1

    if-ne v0, v2, :cond_8

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-static {}, La/c/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_4
    if-ge v0, v8, :cond_9

    aget-byte v3, p1, v0

    if-eqz v3, :cond_a

    new-array v0, v7, [B

    invoke-static {p1, v2, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, La/c/c;->g:[B

    :cond_9
    if-eq v1, v8, :cond_5

    array-length v0, p1

    if-eq v0, v8, :cond_5

    invoke-static {p1, v8}, La/c/c;->b([BI)[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_5

    iput-object v0, p0, La/c/c;->h:[B

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public final c()[B
    .locals 1

    iget-object v0, p0, La/c/c;->e:[B

    return-object v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, La/c/c;->h:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, La/c/c;->f:Ljava/lang/String;

    iget-object v1, p0, La/c/c;->e:[B

    iget-object v2, p0, La/c/c;->g:[B

    iget-object v3, p0, La/c/c;->h:[B

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Type2Message[target="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",challenge="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/c/c;->a()I

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

    const-string v5, "<"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

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

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
