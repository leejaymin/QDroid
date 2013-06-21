.class final Lcom/sphericbox/syb/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final bd:I

.field private final be:I

.field private bf:I

.field bg:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/sphericbox/syb/a/r;->bf:I

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    .line 156
    if-eqz p3, :cond_1

    .line 157
    iget v0, p1, Lcom/sphericbox/syb/a/n;->x:I

    iget v1, p2, Lcom/sphericbox/syb/a/n;->x:I

    if-le v0, v1, :cond_0

    move-object v0, p2

    move-object v1, p1

    .line 174
    :goto_0
    invoke-static {v1, v0, p3}, Lcom/sphericbox/syb/a/r;->a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Z)F

    move-result v2

    .line 175
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lcom/sphericbox/syb/a/m;->a(D)I

    move-result v3

    iput v3, p0, Lcom/sphericbox/syb/a/r;->bd:I

    .line 176
    iget v3, v1, Lcom/sphericbox/syb/a/n;->y:I

    int-to-float v3, v3

    iget v4, v1, Lcom/sphericbox/syb/a/n;->x:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    sub-float v2, v3, v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/sphericbox/syb/a/r;->be:I

    .line 177
    iget-object v2, p0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    return-void

    :cond_0
    move-object v0, p1

    move-object v1, p2

    .line 162
    goto :goto_0

    .line 165
    :cond_1
    iget v0, p1, Lcom/sphericbox/syb/a/n;->y:I

    iget v1, p2, Lcom/sphericbox/syb/a/n;->y:I

    if-le v0, v1, :cond_2

    move-object v0, p2

    move-object v1, p1

    .line 167
    goto :goto_0

    :cond_2
    move-object v0, p1

    move-object v1, p2

    .line 170
    goto :goto_0
.end method

.method private static a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Z)F
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iget v0, p0, Lcom/sphericbox/syb/a/n;->x:I

    iget v1, p1, Lcom/sphericbox/syb/a/n;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 217
    iget v1, p0, Lcom/sphericbox/syb/a/n;->y:I

    iget v2, p1, Lcom/sphericbox/syb/a/n;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 220
    if-eqz p2, :cond_0

    .line 221
    div-float v0, v1, v0

    .line 226
    :goto_0
    return v0

    .line 223
    :cond_0
    div-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sphericbox/syb/a/r;)I
    .locals 2
    .parameter

    .prologue
    .line 182
    iget v0, p1, Lcom/sphericbox/syb/a/r;->bf:I

    iget v1, p0, Lcom/sphericbox/syb/a/r;->bf:I

    sub-int/2addr v0, v1

    .line 183
    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/sphericbox/syb/a/r;->bd:I

    iget v1, p1, Lcom/sphericbox/syb/a/r;->bd:I

    sub-int/2addr v0, v1

    .line 186
    :cond_0
    return v0
.end method

.method public a(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    iget v0, p0, Lcom/sphericbox/syb/a/r;->bf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sphericbox/syb/a/r;->bf:I

    .line 206
    iget-object v0, p0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    check-cast p1, Lcom/sphericbox/syb/a/r;

    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/r;->a(Lcom/sphericbox/syb/a/r;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 196
    instance-of v0, p1, Lcom/sphericbox/syb/a/r;

    if-eqz v0, :cond_1

    .line 197
    check-cast p1, Lcom/sphericbox/syb/a/r;

    .line 198
    iget v0, p1, Lcom/sphericbox/syb/a/r;->bd:I

    iget v1, p0, Lcom/sphericbox/syb/a/r;->bd:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/sphericbox/syb/a/r;->be:I

    iget v1, p0, Lcom/sphericbox/syb/a/r;->be:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v0, v2

    .line 201
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/sphericbox/syb/a/r;->bd:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sphericbox/syb/a/r;->be:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cell[angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sphericbox/syb/a/r;->bd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deg,\n\tshift: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sphericbox/syb/a/r;->be:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " px,\n\tvotes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sphericbox/syb/a/r;->bf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n\tpoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/a/r;->bg:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
