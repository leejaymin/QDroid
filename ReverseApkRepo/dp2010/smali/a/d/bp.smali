.class final La/d/bp;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:La/d/bo;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(La/d/bo;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, La/d/bp;->d:La/d/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/d/bp;->b:Ljava/lang/String;

    iput-object v0, p0, La/d/bp;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a([BII)I
    .locals 6

    const/4 v4, 0x3

    const v5, 0x8000

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/bp;->e:I

    iget v0, p0, La/d/bp;->e:I

    if-eq v0, v4, :cond_0

    iget v0, p0, La/d/bp;->e:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/d/bp;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " referral not supported. Please report this to jcifs at samba dot org."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->g:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->h:I

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, La/d/bp;->e:I

    if-ne v3, v4, :cond_4

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->i:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->a:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->j:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v3

    iput v3, p0, La/d/bp;->k:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/bp;->l:I

    iget-object v3, p0, La/d/bp;->d:La/d/bo;

    iget v0, p0, La/d/bp;->j:I

    add-int v4, p2, v0

    iget-object v0, p0, La/d/bp;->d:La/d/bo;

    iget v0, v0, La/d/bo;->m:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v4, p3, v0}, La/d/bo;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bp;->b:Ljava/lang/String;

    iget v0, p0, La/d/bp;->l:I

    if-lez v0, :cond_1

    iget-object v0, p0, La/d/bp;->d:La/d/bo;

    iget v3, p0, La/d/bp;->l:I

    add-int/2addr v3, p2

    iget-object v4, p0, La/d/bp;->d:La/d/bo;

    iget v4, v4, La/d/bo;->m:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v0, p1, v3, p3, v1}, La/d/bo;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bp;->c:Ljava/lang/String;

    :cond_1
    :goto_2
    iget v0, p0, La/d/bp;->f:I

    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget v3, p0, La/d/bp;->e:I

    if-ne v3, v1, :cond_1

    iget-object v3, p0, La/d/bp;->d:La/d/bo;

    iget-object v4, p0, La/d/bp;->d:La/d/bo;

    iget v4, v4, La/d/bo;->m:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v3, p1, v0, p3, v1}, La/d/bo;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bp;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referral[version="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/d/bp;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",proximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ttl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nodeOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bp;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bp;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bp;->c:Ljava/lang/String;

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
