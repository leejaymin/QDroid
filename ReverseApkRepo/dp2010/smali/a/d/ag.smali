.class final La/d/ag;
.super La/d/b;


# static fields
.field private static final H:I


# instance fields
.field D:I

.field E:I

.field F:I

.field G:I

.field b:I

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.OpenAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/ag;->H:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x2

    const/16 v2, 0x10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/d/b;-><init>(La/d/u;)V

    iput-object p1, p0, La/d/ag;->A:Ljava/lang/String;

    const/16 v0, 0x2d

    iput-byte v0, p0, La/d/ag;->g:B

    and-int/lit8 v0, p2, 0x3

    iput v0, p0, La/d/ag;->c:I

    iget v0, p0, La/d/ag;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v3, p0, La/d/ag;->c:I

    :cond_0
    iget v0, p0, La/d/ag;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, La/d/ag;->c:I

    iget v0, p0, La/d/ag;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, La/d/ag;->c:I

    const/16 v0, 0x16

    iput v0, p0, La/d/ag;->d:I

    const/4 v0, 0x0

    iput v0, p0, La/d/ag;->D:I

    and-int/lit8 v0, p3, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_1

    const/16 v0, 0x12

    iput v0, p0, La/d/ag;->F:I

    :goto_0
    return-void

    :cond_1
    iput v3, p0, La/d/ag;->F:I

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_4

    and-int/lit8 v0, p3, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    iput v2, p0, La/d/ag;->F:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x11

    iput v0, p0, La/d/ag;->F:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, La/d/ag;->F:I

    goto :goto_0
.end method


# virtual methods
.method final a(B)I
    .locals 1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_0

    sget v0, La/d/ag;->H:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i([BI)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, La/d/ag;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, La/d/ag;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, La/d/ag;->c:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ag;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/ag;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ag;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/ag;->D:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ag;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iput v1, p0, La/d/ag;->E:I

    iget v2, p0, La/d/ag;->E:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, La/d/ag;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ag;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, La/d/ag;->G:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, La/d/ag;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    sub-int v0, v2, p2

    return v0
.end method

.method final j([BI)I
    .locals 2

    iget-boolean v0, p0, La/d/ag;->t:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    :goto_0
    iget-object v1, p0, La/d/ag;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, La/d/ag;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_0
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

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComOpenAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, La/d/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ag;->b:I

    invoke-static {v2, v5}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ag;->c:I

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ag;->d:I

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ag;->D:I

    invoke-static {v2, v3}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget v3, p0, La/d/ag;->E:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openFunction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ag;->F:I

    invoke-static {v2, v5}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/ag;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/ag;->A:Ljava/lang/String;

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
