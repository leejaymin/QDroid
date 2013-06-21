.class final La/d/ak;
.super La/d/b;


# static fields
.field private static final D:I


# instance fields
.field private E:J

.field private F:I

.field private G:I

.field b:I

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.ReadAndX.Close"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ak;->D:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    const/16 v0, 0x2e

    iput-byte v0, p0, La/d/ak;->g:B

    const/4 v0, -0x1

    iput v0, p0, La/d/ak;->G:I

    return-void
.end method

.method constructor <init>(IJI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    iput p1, p0, La/d/ak;->F:I

    iput-wide p2, p0, La/d/ak;->E:J

    iput p4, p0, La/d/ak;->c:I

    iput p4, p0, La/d/ak;->b:I

    const/16 v0, 0x2e

    iput-byte v0, p0, La/d/ak;->g:B

    const/4 v0, -0x1

    iput v0, p0, La/d/ak;->G:I

    return-void
.end method


# virtual methods
.method final a(B)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v0, La/d/ak;->D:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i([BI)I
    .locals 4

    iget v0, p0, La/d/ak;->F:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/ak;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, La/d/ak;->E:J

    invoke-static {v1, v2, p1, v0}, La/d/ak;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/ak;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/ak;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/ak;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/ak;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/ak;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/ak;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, La/d/ak;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/ak;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v1, p0, La/d/ak;->E:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, v0}, La/d/ak;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method final j([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    const-string v2, "SmbComReadAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ak;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/d/ak;->E:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ak;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",minCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ak;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ak;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ak;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/d/ak;->E:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
