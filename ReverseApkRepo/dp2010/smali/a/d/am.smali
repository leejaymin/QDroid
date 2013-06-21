.class final La/d/am;
.super La/d/b;


# static fields
.field private static final D:Z

.field private static final d:I


# instance fields
.field private E:[B

.field private F:[B

.field private G:[B

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field b:La/d/be;

.field c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "jcifs.smb.client.SessionSetupAndX.TreeConnectAndX"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/am;->d:I

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/am;->D:Z

    return-void
.end method

.method constructor <init>(La/d/be;La/d/u;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, La/d/b;-><init>(La/d/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/am;->G:[B

    const/16 v0, 0x73

    iput-byte v0, p0, La/d/am;->g:B

    iput-object p1, p0, La/d/am;->b:La/d/be;

    iput-object p3, p0, La/d/am;->c:Ljava/lang/Object;

    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->y:I

    iput v0, p0, La/d/am;->H:I

    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->x:I

    iput v0, p0, La/d/am;->I:I

    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget-object v0, v0, La/d/bg;->s:La/d/bh;

    iget v0, v0, La/d/bh;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    instance-of v0, p3, La/d/t;

    if-eqz v0, :cond_6

    check-cast p3, La/d/t;

    sget-object v0, La/d/t;->d:La/d/t;

    if-ne p3, v0, :cond_2

    new-array v0, v2, [B

    iput-object v0, p0, La/d/am;->E:[B

    new-array v0, v2, [B

    iput-object v0, p0, La/d/am;->F:[B

    iget v0, p0, La/d/am;->I:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, La/d/am;->I:I

    :cond_0
    :goto_0
    iget-object v0, p3, La/d/t;->i:Ljava/lang/String;

    iput-object v0, p0, La/d/am;->J:Ljava/lang/String;

    iget-boolean v0, p0, La/d/am;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/d/am;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/am;->J:Ljava/lang/String;

    :cond_1
    iget-object v0, p3, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/am;->K:Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget-object v0, v0, La/d/bg;->s:La/d/bh;

    iget-boolean v0, v0, La/d/bh;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget-object v0, v0, La/d/bg;->s:La/d/bh;

    iget-object v0, v0, La/d/bh;->p:[B

    invoke-virtual {p3, v0}, La/d/t;->a([B)[B

    move-result-object v0

    iput-object v0, p0, La/d/am;->E:[B

    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget-object v0, v0, La/d/bg;->s:La/d/bh;

    iget-object v0, v0, La/d/bh;->p:[B

    invoke-virtual {p3, v0}, La/d/t;->b([B)[B

    move-result-object v0

    iput-object v0, p0, La/d/am;->F:[B

    iget-object v0, p0, La/d/am;->E:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/am;->F:[B

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null setup prohibited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-boolean v0, La/d/am;->D:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, La/d/am;->t:Z

    if-eqz v0, :cond_5

    invoke-virtual {p3}, La/d/t;->d()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [B

    iput-object v1, p0, La/d/am;->E:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, La/d/am;->F:[B

    iget-object v1, p0, La/d/am;->F:[B

    invoke-virtual {p0, v0, v1, v2}, La/d/am;->a(Ljava/lang/String;[BI)I

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, La/d/t;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, La/d/am;->E:[B

    new-array v1, v2, [B

    iput-object v1, p0, La/d/am;->F:[B

    iget-object v1, p0, La/d/am;->E:[B

    invoke-virtual {p0, v0, v1, v2}, La/d/am;->a(Ljava/lang/String;[BI)I

    goto/16 :goto_0

    :cond_6
    instance-of v0, p3, [B

    if-eqz v0, :cond_7

    check-cast p3, [B

    iput-object p3, p0, La/d/am;->G:[B

    goto :goto_1

    :cond_7
    new-instance v0, La/d/ay;

    const-string v1, "Unsupported credential type"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p1, La/d/be;->e:La/d/bg;

    iget-object v0, v0, La/d/bg;->s:La/d/bh;

    iget v0, v0, La/d/bh;->g:I

    if-nez v0, :cond_b

    instance-of v0, p3, La/d/t;

    if-eqz v0, :cond_a

    check-cast p3, La/d/t;

    new-array v0, v2, [B

    iput-object v0, p0, La/d/am;->E:[B

    new-array v0, v2, [B

    iput-object v0, p0, La/d/am;->F:[B

    iget-object v0, p3, La/d/t;->i:Ljava/lang/String;

    iput-object v0, p0, La/d/am;->J:Ljava/lang/String;

    iget-boolean v0, p0, La/d/am;->t:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, La/d/am;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/am;->J:Ljava/lang/String;

    :cond_9
    iget-object v0, p3, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/am;->K:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    new-instance v0, La/d/ay;

    const-string v1, "Unsupported credential type"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, La/d/ay;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(B)I
    .locals 1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    sget v0, La/d/am;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i([BI)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/d/am;->b:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->v:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/am;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, La/d/am;->b:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    iget v1, v1, La/d/bg;->u:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/am;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/am;->b:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p1, v0}, La/d/am;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/am;->H:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/am;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/d/am;->G:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, La/d/am;->G:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/am;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/lit8 v1, v0, 0x1

    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    iget v1, p0, La/d/am;->I:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/am;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v1, p0, La/d/am;->E:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/am;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, La/d/am;->F:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/am;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method final j([BI)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/d/am;->G:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/am;->G:[B

    iget-object v1, p0, La/d/am;->G:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/am;->G:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_0
    iget-object v1, p0, La/d/am;->b:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    sget-object v1, La/d/bg;->ax:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/am;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/d/am;->b:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    sget-object v1, La/d/bg;->ay:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/am;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
    iget-object v0, p0, La/d/am;->E:[B

    iget-object v1, p0, La/d/am;->E:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/am;->E:[B

    array-length v0, v0

    add-int/2addr v0, p2

    iget-object v1, p0, La/d/am;->F:[B

    iget-object v2, p0, La/d/am;->F:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La/d/am;->F:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/d/am;->J:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/am;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/d/am;->K:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/am;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
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

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SmbComSessionSetupAndX["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",snd_buf_size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, La/d/am;->b:La/d/be;

    iget-object v3, v3, La/d/be;->e:La/d/bg;

    iget v3, v3, La/d/bg;->v:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",maxMpxCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, La/d/am;->b:La/d/be;

    iget-object v3, v3, La/d/be;->e:La/d/bg;

    iget v3, v3, La/d/bg;->u:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",VC_NUMBER="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, La/d/am;->b:La/d/be;

    iget-object v3, v3, La/d/be;->e:La/d/bg;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sessionKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, La/d/am;->H:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",lmHash.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, La/d/am;->E:[B

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",ntHash.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, La/d/am;->F:[B

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/am;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/am;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/am;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NATIVE_OS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/am;->b:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    sget-object v1, La/d/bg;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NATIVE_LANMAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/am;->b:La/d/be;

    iget-object v1, v1, La/d/be;->e:La/d/bg;

    sget-object v1, La/d/bg;->ay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v0, p0, La/d/am;->E:[B

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, La/d/am;->F:[B

    array-length v1, v1

    goto :goto_1
.end method
