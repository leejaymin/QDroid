.class final La/d/bj;
.super La/d/ao;


# static fields
.field static final a:I

.field static final b:I


# instance fields
.field private aA:I

.field private aB:I

.field private aC:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.listSize"

    const v1, 0xffff

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/bj;->a:I

    const-string v0, "jcifs.smb.client.listCount"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/bj;->b:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, La/d/ao;-><init>()V

    iput v2, p0, La/d/bj;->aB:I

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, La/d/bj;->A:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, La/d/bj;->aC:Ljava/lang/String;

    const/16 v0, 0x16

    iput v0, p0, La/d/bj;->c:I

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bj;->g:B

    const/4 v0, 0x1

    iput-byte v0, p0, La/d/bj;->S:B

    iput v2, p0, La/d/bj;->d:I

    const/16 v0, 0x104

    iput v0, p0, La/d/bj;->aA:I

    iput v2, p0, La/d/bj;->M:I

    const/16 v0, 0xa

    iput v0, p0, La/d/bj;->N:I

    sget v0, La/d/bj;->a:I

    iput v0, p0, La/d/bj;->O:I

    iput-byte v2, p0, La/d/bj;->P:B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bj;->A:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method final a([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bj;->S:B

    aput-byte v1, p1, p2

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method final b([BI)I
    .locals 3

    iget v0, p0, La/d/bj;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bj;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    sget v1, La/d/bj;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/bj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bj;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/bj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bj;->aA:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/bj;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bj;->aB:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/bj;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/d/bj;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bj;->aC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, La/d/bj;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method final c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2FindFirst2["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bj;->c:I

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, La/d/bj;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bj;->d:I

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",informationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bj;->aA:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchStorageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/bj;->aB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bj;->A:Ljava/lang/String;

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
