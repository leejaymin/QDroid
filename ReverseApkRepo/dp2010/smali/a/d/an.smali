.class final La/d/an;
.super La/d/b;


# instance fields
.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field b:Z

.field c:[B

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(La/d/u;)V
    .locals 1

    invoke-direct {p0, p1}, La/d/b;-><init>(La/d/u;)V

    const-string v0, ""

    iput-object v0, p0, La/d/an;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/d/an;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/d/an;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/d/an;->c:[B

    return-void
.end method


# virtual methods
.method final i([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final j([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final k([BI)I
    .locals 2

    const/4 v0, 0x1

    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, La/d/an;->b:Z

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, La/d/an;->v:Z

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, La/d/an;->d([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, La/d/an;->c:[B

    :cond_0
    sub-int/2addr v0, p2

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l([BI)I
    .locals 3

    iget-boolean v0, p0, La/d/an;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, La/d/an;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, La/d/an;->c:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, La/d/an;->c:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_0
    const/16 v1, 0x100

    iget-boolean v2, p0, La/d/u;->t:Z

    invoke-virtual {p0, p1, v0, v1, v2}, La/d/u;->a([BIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/d/an;->d:Ljava/lang/String;

    iget-object v1, p0, La/d/an;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, La/d/an;->a(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, La/d/an;->s:I

    add-int/2addr v1, p2

    iget-boolean v2, p0, La/d/an;->t:Z

    invoke-virtual {p0, p1, v0, v1, v2}, La/d/an;->b([BIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/d/an;->D:Ljava/lang/String;

    iget-object v1, p0, La/d/an;->D:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, La/d/an;->a(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, La/d/an;->v:Z

    if-nez v1, :cond_0

    iget v1, p0, La/d/an;->s:I

    add-int/2addr v1, p2

    iget-boolean v2, p0, La/d/an;->t:Z

    invoke-virtual {p0, p1, v0, v1, v2}, La/d/an;->b([BIIZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/d/an;->E:Ljava/lang/String;

    iget-object v1, p0, La/d/an;->E:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, La/d/an;->a(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    sub-int/2addr v0, p2

    return v0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComSessionSetupAndXResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isLoggedInAsGuest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, La/d/an;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/an;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeLanMan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/an;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/an;->E:Ljava/lang/String;

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
