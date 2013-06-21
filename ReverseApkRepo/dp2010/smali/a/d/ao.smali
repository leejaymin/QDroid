.class abstract La/d/ao;
.super La/d/u;

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final a:I


# instance fields
.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:B

.field Q:I

.field R:I

.field S:B

.field T:Ljava/lang/String;

.field U:I

.field V:[B

.field private aA:Z

.field private aB:Z

.field private aC:I

.field private aD:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, La/d/ao;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, La/d/u;-><init>()V

    iput v1, p0, La/d/ao;->b:I

    iput v1, p0, La/d/ao;->c:I

    iput v1, p0, La/d/ao;->d:I

    iput-boolean v2, p0, La/d/ao;->aA:Z

    iput-boolean v2, p0, La/d/ao;->aB:Z

    sget v0, La/d/ao;->a:I

    iput v0, p0, La/d/ao;->O:I

    iput v1, p0, La/d/ao;->Q:I

    iput v2, p0, La/d/ao;->R:I

    const-string v0, ""

    iput-object v0, p0, La/d/ao;->T:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, La/d/ao;->N:I

    const/16 v0, 0x3d

    iput v0, p0, La/d/ao;->D:I

    const/16 v0, 0x33

    iput v0, p0, La/d/ao;->E:I

    return-void
.end method


# virtual methods
.method abstract a([BI)I
.end method

.method a(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, La/d/ao;->e()V

    return-void
.end method

.method abstract b([BI)I
.end method

.method abstract c([BI)I
.end method

.method final e()V
    .locals 1

    invoke-super {p0}, La/d/u;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/ao;->aA:Z

    iput-boolean v0, p0, La/d/ao;->aB:Z

    return-void
.end method

.method public hasMoreElements()Z
    .locals 1

    iget-boolean v0, p0, La/d/ao;->aA:Z

    return v0
.end method

.method i([BI)I
    .locals 6

    const/16 v5, 0x26

    const/4 v1, 0x0

    iget v0, p0, La/d/ao;->L:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, La/d/ao;->M:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, La/d/ao;->g:B

    if-eq v2, v5, :cond_0

    iget v2, p0, La/d/ao;->N:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/ao;->O:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    iget-byte v3, p0, La/d/ao;->P:B

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v2, p0, La/d/ao;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/ao;->Q:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    :cond_0
    iget v2, p0, La/d/ao;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/ao;->G:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v2, p0, La/d/ao;->g:B

    if-ne v2, v5, :cond_1

    iget v2, p0, La/d/ao;->H:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :cond_1
    iget v2, p0, La/d/ao;->I:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v2, v0, 0x2

    iget v0, p0, La/d/ao;->I:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    int-to-long v3, v0

    invoke-static {v3, v4, p1, v2}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget-byte v2, p0, La/d/ao;->g:B

    if-ne v2, v5, :cond_3

    iget v1, p0, La/d/ao;->K:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_1
    sub-int/2addr v0, p2

    return v0

    :cond_2
    iget v0, p0, La/d/ao;->J:I

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, La/d/ao;->R:I

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    invoke-virtual {p0, p1, v0}, La/d/ao;->a([BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method final j([BI)I
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, La/d/ao;->c:I

    iget-byte v0, p0, La/d/ao;->g:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, La/d/ao;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, La/d/ao;->T:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, La/d/ao;->a(Ljava/lang/String;[BI)I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    iget v2, p0, La/d/ao;->F:I

    if-lez v2, :cond_1

    move v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, La/d/ao;->V:[B

    iget v1, p0, La/d/ao;->aC:I

    iget v3, p0, La/d/ao;->F:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/ao;->F:I

    add-int/2addr v0, v2

    :cond_1
    iget v1, p0, La/d/ao;->I:I

    if-lez v1, :cond_3

    iget v1, p0, La/d/ao;->d:I

    move v2, v0

    move v0, v1

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    aput-byte v4, p1, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, La/d/ao;->V:[B

    iget v1, p0, La/d/ao;->aD:I

    iget v3, p0, La/d/ao;->I:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, La/d/ao;->aD:I

    iget v1, p0, La/d/ao;->I:I

    add-int/2addr v0, v1

    iput v0, p0, La/d/ao;->aD:I

    iget v0, p0, La/d/ao;->I:I

    add-int/2addr v0, v2

    :cond_3
    sub-int/2addr v0, p2

    return v0

    :cond_4
    move v0, p2

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

.method public nextElement()Ljava/lang/Object;
    .locals 4

    const/16 v3, -0x60

    const/4 v1, 0x0

    iget-boolean v0, p0, La/d/ao;->aB:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, La/d/ao;->aB:Z

    iget v0, p0, La/d/ao;->D:I

    iget v2, p0, La/d/ao;->R:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/ao;->G:I

    iget-byte v0, p0, La/d/ao;->g:B

    if-eq v0, v3, :cond_2

    iget-byte v0, p0, La/d/ao;->g:B

    const/16 v2, 0x25

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, La/d/ao;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, La/d/ao;->G:I

    iget-object v2, p0, La/d/ao;->T:Ljava/lang/String;

    iget v3, p0, La/d/ao;->G:I

    invoke-virtual {p0, v2, v3}, La/d/ao;->a(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, La/d/ao;->G:I

    :cond_0
    :goto_0
    iget v0, p0, La/d/ao;->G:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/ao;->c:I

    iget v0, p0, La/d/ao;->c:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, La/d/ao;->c:I

    iget v0, p0, La/d/ao;->G:I

    iget v2, p0, La/d/ao;->c:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/ao;->G:I

    iget-object v0, p0, La/d/ao;->V:[B

    iget v2, p0, La/d/ao;->aC:I

    invoke-virtual {p0, v0, v2}, La/d/ao;->b([BI)I

    move-result v0

    iput v0, p0, La/d/ao;->L:I

    iget v0, p0, La/d/ao;->L:I

    iput v0, p0, La/d/ao;->aD:I

    iget v0, p0, La/d/ao;->U:I

    iget v2, p0, La/d/ao;->G:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/ao;->L:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, La/d/ao;->F:I

    iget v2, p0, La/d/ao;->F:I

    sub-int v2, v0, v2

    iget v0, p0, La/d/ao;->G:I

    iget v3, p0, La/d/ao;->F:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/ao;->J:I

    iget v0, p0, La/d/ao;->J:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/ao;->d:I

    iget v0, p0, La/d/ao;->d:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, p0, La/d/ao;->d:I

    iget v0, p0, La/d/ao;->J:I

    iget v3, p0, La/d/ao;->d:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/ao;->J:I

    iget-object v0, p0, La/d/ao;->V:[B

    iget v3, p0, La/d/ao;->aD:I

    invoke-virtual {p0, v0, v3}, La/d/ao;->c([BI)I

    move-result v0

    iput v0, p0, La/d/ao;->M:I

    iget v0, p0, La/d/ao;->M:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/ao;->I:I

    :goto_3
    iget v0, p0, La/d/ao;->H:I

    iget v2, p0, La/d/ao;->F:I

    add-int/2addr v0, v2

    iget v2, p0, La/d/ao;->L:I

    if-lt v0, v2, :cond_1

    iget v0, p0, La/d/ao;->K:I

    iget v2, p0, La/d/ao;->I:I

    add-int/2addr v0, v2

    iget v2, p0, La/d/ao;->M:I

    if-lt v0, v2, :cond_1

    iput-boolean v1, p0, La/d/ao;->aA:Z

    :cond_1
    return-object p0

    :cond_2
    iget-byte v0, p0, La/d/ao;->g:B

    if-ne v0, v3, :cond_0

    iget v0, p0, La/d/ao;->G:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/ao;->G:I

    goto :goto_0

    :cond_3
    iget v0, p0, La/d/ao;->c:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    iget v0, p0, La/d/ao;->d:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    iget-byte v0, p0, La/d/ao;->g:B

    if-eq v0, v3, :cond_7

    const/16 v0, 0x26

    iput-byte v0, p0, La/d/ao;->g:B

    :goto_4
    const/16 v0, 0x33

    iput v0, p0, La/d/ao;->G:I

    iget v0, p0, La/d/ao;->L:I

    iget v2, p0, La/d/ao;->H:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget v0, p0, La/d/ao;->G:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/ao;->c:I

    iget v0, p0, La/d/ao;->c:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    iput v0, p0, La/d/ao;->c:I

    iget v0, p0, La/d/ao;->G:I

    iget v2, p0, La/d/ao;->c:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/ao;->G:I

    :cond_6
    iget v0, p0, La/d/ao;->H:I

    iget v2, p0, La/d/ao;->F:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/ao;->H:I

    iget v0, p0, La/d/ao;->U:I

    iget v2, p0, La/d/ao;->G:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/ao;->c:I

    sub-int/2addr v0, v2

    iget v2, p0, La/d/ao;->L:I

    iget v3, p0, La/d/ao;->H:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, La/d/ao;->F:I

    iget v2, p0, La/d/ao;->F:I

    sub-int v2, v0, v2

    iget v0, p0, La/d/ao;->G:I

    iget v3, p0, La/d/ao;->F:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/ao;->J:I

    iget v0, p0, La/d/ao;->J:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, La/d/ao;->d:I

    iget v0, p0, La/d/ao;->d:I

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    iput v0, p0, La/d/ao;->d:I

    iget v0, p0, La/d/ao;->J:I

    iget v3, p0, La/d/ao;->d:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/ao;->J:I

    iget v0, p0, La/d/ao;->K:I

    iget v3, p0, La/d/ao;->I:I

    add-int/2addr v0, v3

    iput v0, p0, La/d/ao;->K:I

    iget v0, p0, La/d/ao;->d:I

    sub-int v0, v2, v0

    iget v2, p0, La/d/ao;->M:I

    iget v3, p0, La/d/ao;->K:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/ao;->I:I

    goto/16 :goto_3

    :cond_7
    const/16 v0, -0x5f

    iput-byte v0, p0, La/d/ao;->g:B

    goto :goto_4

    :cond_8
    iget v0, p0, La/d/ao;->c:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    iget v0, p0, La/d/ao;->d:I

    rsub-int/lit8 v0, v0, 0x2

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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

    iget v2, p0, La/d/ao;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxSetupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, La/d/ao;->P:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->b:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ao;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
