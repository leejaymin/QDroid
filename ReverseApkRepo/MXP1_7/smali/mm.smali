.class abstract Lmm;
.super Ljava/lang/Object;


# instance fields
.field final 洹:I

.field final 꾨뱾:J

.field final 대쫫:I

.field 뚮Ц:J

.field final 먮:Z

.field 먯껜蹂대떎:F

.field 몃Ъ:F

.field final 붿슧:I


# direct methods
.method constructor <init>(IIFFJZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmm;->대쫫:I

    iput p2, p0, Lmm;->洹:I

    iput p3, p0, Lmm;->몃Ъ:F

    iput p4, p0, Lmm;->먯껜蹂대떎:F

    iput-wide p5, p0, Lmm;->꾨뱾:J

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v2

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f333333

    invoke-static {}, Lmd;->쇰뒗()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lmm;->붿슧:I

    iput-boolean p7, p0, Lmm;->먮:Z

    return-void
.end method


# virtual methods
.method final 癤욱븳援(J)I
    .locals 5

    const/high16 v4, 0x3f80

    iget-wide v0, p0, Lmm;->뚮Ц:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lmm;->뚮Ц:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    const/16 v1, 0x5dc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    const v1, 0x44bb8000

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method protected 癤욱븳援()Z
    .locals 4

    iget-wide v0, p0, Lmm;->뚮Ц:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final 癤욱븳援(JLandroid/graphics/Paint;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lmm;->癤욱븳援(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lmm;->붿슧:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract 癤욱븳援(Landroid/graphics/Canvas;J)Z
.end method

.method final 궗(J)F
    .locals 5

    const/high16 v0, 0x3f80

    iget-boolean v1, p0, Lmm;->먮:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lmm;->뚮Ц:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lmm;->뚮Ц:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    const v2, 0x3faaaaab

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method
