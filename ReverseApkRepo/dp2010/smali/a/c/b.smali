.class public final La/c/b;
.super La/c/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v0}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    or-int/lit16 v0, v0, 0x200

    sput v0, La/c/b;->b:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/c/b;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {}, La/b/g;->a()La/b/g;

    move-result-object v0

    invoke-virtual {v0}, La/b/g;->g()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sput-object v0, La/c/b;->d:Ljava/lang/String;

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
    .locals 3

    sget v0, La/c/b;->b:I

    sget-object v1, La/c/b;->c:Ljava/lang/String;

    sget-object v2, La/c/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, La/c/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, La/c/a;-><init>()V

    sget v0, La/c/b;->b:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, La/c/b;->a(I)V

    iput-object p2, p0, La/c/b;->e:Ljava/lang/String;

    if-nez p3, :cond_0

    sget-object p3, La/c/b;->d:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, La/c/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, La/c/b;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()[B
    .locals 10

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, La/c/b;->e:Ljava/lang/String;

    iget-object v6, p0, La/c/b;->f:Ljava/lang/String;

    invoke-virtual {p0}, La/c/b;->a()I

    move-result v5

    const/4 v2, 0x0

    new-array v2, v2, [B

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit16 v3, v5, 0x1000

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, La/c/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v4, v2

    move v5, v3

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [B

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit16 v2, v5, 0x2000

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, La/c/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    :goto_1
    if-eqz v1, :cond_0

    array-length v0, v4

    add-int/lit8 v0, v0, 0x20

    array-length v5, v3

    add-int/2addr v0, v5

    :cond_0
    new-array v0, v0, [B

    sget-object v5, La/c/b;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, La/c/b;->a([BII)V

    const/16 v5, 0xc

    invoke-static {v0, v5, v2}, La/c/b;->a([BII)V

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    const/16 v2, 0x20

    invoke-static {v0, v1, v2, v4}, La/c/b;->a([BII[B)V

    const/16 v1, 0x18

    array-length v2, v4

    add-int/lit8 v2, v2, 0x20

    invoke-static {v0, v1, v2, v3}, La/c/b;->a([BII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :cond_2
    and-int/lit16 v4, v5, -0x1001

    move v5, v4

    move-object v4, v2

    move v2, v3

    goto :goto_0

    :cond_3
    and-int/lit16 v1, v5, -0x2001

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, La/c/b;->e:Ljava/lang/String;

    iget-object v1, p0, La/c/b;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type1Message[suppliedDomain="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",suppliedWorkstation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/c/b;->a()I

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

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
