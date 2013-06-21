.class final La/d/aq;
.super La/d/b;


# static fields
.field private static H:[B

.field private static final c:Z


# instance fields
.field private D:Z

.field private E:Ljava/lang/String;

.field private F:[B

.field private G:I

.field b:Ljava/lang/String;

.field private d:La/d/be;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/aq;->c:Z

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/d/aq;->H:[B

    const-string v0, "jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_0
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_1
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Delete"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_2
    const-string v0, "jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_3
    const-string v0, "jcifs.smb.client.TreeConnectAndX.OpenAndX"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_4
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Rename"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_5
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Transaction"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, La/d/aq;->H:[B

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_6
    const-string v0, "jcifs.smb.client.TreeConnectAndX.QueryInformation"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, La/d/aq;->H:[B

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_7
    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(La/d/be;Ljava/lang/String;Ljava/lang/String;La/d/u;)V
    .locals 1

    invoke-direct {p0, p4}, La/d/b;-><init>(La/d/u;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/aq;->D:Z

    iput-object p1, p0, La/d/aq;->d:La/d/be;

    iput-object p2, p0, La/d/aq;->b:Ljava/lang/String;

    iput-object p3, p0, La/d/aq;->E:Ljava/lang/String;

    const/16 v0, 0x75

    iput-byte v0, p0, La/d/aq;->g:B

    return-void
.end method


# virtual methods
.method final a(B)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0xff

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    sget-object v1, La/d/aq;->H:[B

    aget-byte v0, v1, v0

    goto :goto_0

    :sswitch_1
    sget-object v0, La/d/aq;->H:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v0, La/d/aq;->H:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v0, La/d/aq;->H:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_4
    sget-object v0, La/d/aq;->H:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_5
    sget-object v0, La/d/aq;->H:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_6
    sget-object v0, La/d/aq;->H:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    goto :goto_0

    :sswitch_7
    sget-object v0, La/d/aq;->H:[B

    const/16 v1, 0x8

    aget-byte v0, v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x10 -> :sswitch_0
        0x25 -> :sswitch_6
        0x2d -> :sswitch_4
    .end sparse-switch
.end method

.method final i([BI)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->e:La/d/bg;

    iget-object v2, v2, La/d/bg;->s:La/d/bh;

    iget v2, v2, La/d/bh;->g:I

    if-nez v2, :cond_3

    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->f:La/d/t;

    iget-boolean v2, v2, La/d/t;->m:Z

    if-nez v2, :cond_0

    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->f:La/d/t;

    iget-object v2, v2, La/d/t;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    :cond_0
    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->e:La/d/bg;

    iget-object v2, v2, La/d/bg;->s:La/d/bh;

    iget-boolean v2, v2, La/d/bh;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->f:La/d/t;

    iget-object v3, p0, La/d/aq;->d:La/d/be;

    iget-object v3, v3, La/d/be;->e:La/d/bg;

    iget-object v3, v3, La/d/bg;->s:La/d/bh;

    iget-object v3, v3, La/d/bh;->p:[B

    invoke-virtual {v2, v3}, La/d/t;->a([B)[B

    move-result-object v2

    iput-object v2, p0, La/d/aq;->F:[B

    iget-object v2, p0, La/d/aq;->F:[B

    array-length v2, v2

    iput v2, p0, La/d/aq;->G:I

    :goto_0
    add-int/lit8 v2, p2, 0x1

    iget-boolean v3, p0, La/d/aq;->D:Z

    if-eqz v3, :cond_4

    :goto_1
    aput-byte v0, p1, p2

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, La/d/aq;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/aq;->a(J[BI)V

    const/4 v0, 0x4

    return v0

    :cond_1
    sget-boolean v2, La/d/aq;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->f:La/d/t;

    iget-object v2, v2, La/d/t;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, p0, La/d/aq;->F:[B

    iget-object v2, p0, La/d/aq;->d:La/d/be;

    iget-object v2, v2, La/d/be;->f:La/d/t;

    iget-object v2, v2, La/d/t;->j:Ljava/lang/String;

    iget-object v3, p0, La/d/aq;->F:[B

    invoke-virtual {p0, v2, v3, v1}, La/d/aq;->a(Ljava/lang/String;[BI)I

    move-result v2

    iput v2, p0, La/d/aq;->G:I

    goto :goto_0

    :cond_3
    iput v0, p0, La/d/aq;->G:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method final j([BI)I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, La/d/aq;->d:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    iget-object v0, v0, La/d/bg;->s:La/d/bh;

    iget v0, v0, La/d/bh;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/d/aq;->d:La/d/be;

    iget-object v0, v0, La/d/be;->f:La/d/t;

    iget-boolean v0, v0, La/d/t;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/aq;->d:La/d/be;

    iget-object v0, v0, La/d/be;->f:La/d/t;

    iget-object v0, v0, La/d/t;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, La/d/aq;->F:[B

    iget v2, p0, La/d/aq;->G:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/aq;->G:I

    add-int/2addr v0, p2

    :goto_0
    iget-object v2, p0, La/d/aq;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v0}, La/d/aq;->a(Ljava/lang/String;[BI)I

    move-result v2

    add-int/2addr v0, v2

    :try_start_0
    iget-object v2, p0, La/d/aq;->E:Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, La/d/aq;->E:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, La/d/aq;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    sub-int v0, v2, p2

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method final k([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final l([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComTreeConnectAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",disconnectTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, La/d/aq;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",passwordLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/aq;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/aq;->F:[B

    iget v3, p0, La/d/aq;->G:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, La/e/d;->a([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/aq;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/aq;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
