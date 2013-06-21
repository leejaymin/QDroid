.class abstract La/d/ap;
.super La/d/u;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field K:I

.field L:B

.field M:Z

.field N:Z

.field O:[B

.field P:I

.field Q:I

.field R:[La/d/h;

.field private S:I

.field private T:Z

.field private U:Z

.field private a:I

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, La/d/u;-><init>()V

    iput-boolean v0, p0, La/d/ap;->M:Z

    iput-boolean v0, p0, La/d/ap;->N:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/d/ap;->O:[B

    return-void
.end method


# virtual methods
.method abstract a([BI)I
.end method

.method abstract a([BII)I
.end method

.method final e()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, La/d/u;->e()V

    iput v1, p0, La/d/ap;->J:I

    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/ap;->M:Z

    iput-boolean v0, p0, La/d/ap;->N:Z

    iput-boolean v1, p0, La/d/ap;->U:Z

    iput-boolean v1, p0, La/d/ap;->T:Z

    return-void
.end method

.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, La/d/ap;->l:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/d/ap;->M:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

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
    .locals 4

    invoke-static {p1, p2}, La/d/ap;->d([BI)I

    move-result v0

    iput v0, p0, La/d/ap;->b:I

    iget v0, p0, La/d/ap;->J:I

    if-nez v0, :cond_0

    iget v0, p0, La/d/ap;->b:I

    iput v0, p0, La/d/ap;->J:I

    :cond_0
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->c:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->d:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->D:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->E:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->K:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->F:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/ap;->d([BI)I

    move-result v1

    iput v1, p0, La/d/ap;->G:I

    add-int/lit8 v0, v0, 0x2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, La/d/ap;->H:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/ap;->H:I

    if-eqz v1, :cond_1

    sget-object v1, La/d/ap;->e:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    sget-object v1, La/d/ap;->e:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupCount is not zero: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, La/d/ap;->H:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/e/e;->println(Ljava/lang/String;)V

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method final l([BI)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, La/d/ap;->S:I

    iput v4, p0, La/d/ap;->a:I

    iget v0, p0, La/d/ap;->d:I

    if-lez v0, :cond_0

    iget v0, p0, La/d/ap;->D:I

    iget v1, p0, La/d/ap;->i:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    iput v0, p0, La/d/ap;->a:I

    add-int/2addr v0, p2

    iget-object v1, p0, La/d/ap;->O:[B

    iget v2, p0, La/d/ap;->I:I

    iget v3, p0, La/d/ap;->E:I

    add-int/2addr v2, v3

    iget v3, p0, La/d/ap;->d:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/d/ap;->d:I

    add-int p2, v0, v1

    :cond_0
    iget v0, p0, La/d/ap;->K:I

    if-lez v0, :cond_1

    iget v0, p0, La/d/ap;->F:I

    iget v1, p0, La/d/ap;->i:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    iput v0, p0, La/d/ap;->S:I

    add-int/2addr v0, p2

    iget-object v1, p0, La/d/ap;->O:[B

    iget v2, p0, La/d/ap;->J:I

    iget v3, p0, La/d/ap;->G:I

    add-int/2addr v2, v3

    iget v3, p0, La/d/ap;->K:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/ap;->K:I

    :cond_1
    iget-boolean v0, p0, La/d/ap;->T:Z

    if-nez v0, :cond_2

    iget v0, p0, La/d/ap;->E:I

    iget v1, p0, La/d/ap;->d:I

    add-int/2addr v0, v1

    iget v1, p0, La/d/ap;->b:I

    if-ne v0, v1, :cond_2

    iput-boolean v5, p0, La/d/ap;->T:Z

    :cond_2
    iget-boolean v0, p0, La/d/ap;->U:Z

    if-nez v0, :cond_3

    iget v0, p0, La/d/ap;->G:I

    iget v1, p0, La/d/ap;->K:I

    add-int/2addr v0, v1

    iget v1, p0, La/d/ap;->c:I

    if-ne v0, v1, :cond_3

    iput-boolean v5, p0, La/d/ap;->U:Z

    :cond_3
    iget-boolean v0, p0, La/d/ap;->T:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, La/d/ap;->U:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, La/d/ap;->M:Z

    iget-object v0, p0, La/d/ap;->O:[B

    iget v1, p0, La/d/ap;->I:I

    iget v2, p0, La/d/ap;->b:I

    invoke-virtual {p0, v0, v1}, La/d/ap;->a([BI)I

    iget-object v0, p0, La/d/ap;->O:[B

    iget v1, p0, La/d/ap;->J:I

    iget v2, p0, La/d/ap;->c:I

    invoke-virtual {p0, v0, v1, v2}, La/d/ap;->a([BII)I

    :cond_4
    iget v0, p0, La/d/ap;->a:I

    iget v1, p0, La/d/ap;->d:I

    add-int/2addr v0, v1

    iget v1, p0, La/d/ap;->S:I

    add-int/2addr v0, v1

    iget v1, p0, La/d/ap;->K:I

    add-int/2addr v0, v1

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, La/d/ap;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/ap;->N:Z

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, La/d/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ap;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
