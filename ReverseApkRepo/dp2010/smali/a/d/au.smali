.class final La/d/au;
.super La/d/b;


# static fields
.field private static final c:I

.field private static final d:I


# instance fields
.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:[B

.field private J:J

.field private K:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/au;->c:I

    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/au;->d:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    const/16 v0, 0x2f

    iput-byte v0, p0, La/d/au;->g:B

    return-void
.end method

.method constructor <init>(IJI[BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    iput p1, p0, La/d/au;->D:I

    iput-wide p2, p0, La/d/au;->J:J

    iput p4, p0, La/d/au;->E:I

    iput-object p5, p0, La/d/au;->I:[B

    iput p6, p0, La/d/au;->H:I

    iput p7, p0, La/d/au;->F:I

    const/16 v0, 0x2f

    iput-byte v0, p0, La/d/au;->g:B

    return-void
.end method


# virtual methods
.method final a(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget v0, La/d/au;->c:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget v0, La/d/au;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(IJI[BII)V
    .locals 1

    iput p1, p0, La/d/au;->D:I

    iput-wide p2, p0, La/d/au;->J:J

    iput p4, p0, La/d/au;->E:I

    iput-object p5, p0, La/d/au;->I:[B

    iput p6, p0, La/d/au;->H:I

    iput p7, p0, La/d/au;->F:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/au;->B:La/d/v;

    return-void
.end method

.method final i([BI)I
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, La/d/au;->i:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1a

    iput v0, p0, La/d/au;->G:I

    iget v0, p0, La/d/au;->G:I

    iget v2, p0, La/d/au;->i:I

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, La/d/au;->K:I

    iget v0, p0, La/d/au;->K:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, La/d/au;->K:I

    iget v0, p0, La/d/au;->G:I

    iget v2, p0, La/d/au;->K:I

    add-int/2addr v0, v2

    iput v0, p0, La/d/au;->G:I

    iget v0, p0, La/d/au;->D:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, La/d/au;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, La/d/au;->J:J

    invoke-static {v2, v3, p1, v0}, La/d/au;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/4 v4, -0x1

    aput-byte v4, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    iget v0, p0, La/d/au;->K:I

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    iget v0, p0, La/d/au;->b:I

    int-to-long v3, v0

    invoke-static {v3, v4, p1, v2}, La/d/au;->a(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, La/d/au;->E:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/au;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, La/d/au;->F:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/au;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/au;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, La/d/au;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v1, p0, La/d/au;->J:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, v0}, La/d/au;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method final j([BI)I
    .locals 4

    move v0, p2

    :goto_0
    iget v1, p0, La/d/au;->K:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, La/d/au;->K:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/d/au;->I:[B

    iget v2, p0, La/d/au;->H:I

    iget v3, p0, La/d/au;->F:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/d/au;->F:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

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

    const-string v2, "SmbComWriteAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/au;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/d/au;->J:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",writeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/au;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/au;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/au;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/au;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
