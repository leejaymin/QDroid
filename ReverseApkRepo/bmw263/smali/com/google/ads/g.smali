.class public final Lcom/google/ads/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/ads/g;

.field public static final b:Lcom/google/ads/g;

.field public static final c:Lcom/google/ads/g;

.field public static final d:Lcom/google/ads/g;

.field public static final e:Lcom/google/ads/g;

.field public static final f:Lcom/google/ads/g;


# instance fields
.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lcom/google/ads/g;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    .line 97
    new-instance v0, Lcom/google/ads/g;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    .line 100
    new-instance v0, Lcom/google/ads/g;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->c:Lcom/google/ads/g;

    .line 103
    new-instance v0, Lcom/google/ads/g;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->d:Lcom/google/ads/g;

    .line 106
    new-instance v0, Lcom/google/ads/g;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->e:Lcom/google/ads/g;

    .line 112
    new-instance v0, Lcom/google/ads/g;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/g;->f:Lcom/google/ads/g;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/google/ads/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/g;->k:Z

    .line 147
    const-string v0, "mb"

    iput-object v0, p0, Lcom/google/ads/g;->l:Ljava/lang/String;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/g;->k:Z

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/google/ads/g;->g:I

    .line 162
    iput p2, p0, Lcom/google/ads/g;->h:I

    .line 163
    iput-object p3, p0, Lcom/google/ads/g;->l:Ljava/lang/String;

    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/ads/g;->i:Z

    .line 165
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/ads/g;->j:Z

    .line 166
    iput-boolean v2, p0, Lcom/google/ads/g;->k:Z

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 165
    goto :goto_1
.end method

.method public static a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/ads/g;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    .line 195
    :cond_1
    :goto_0
    return-object p0

    .line 185
    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/g;->i:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 187
    :goto_1
    iget-boolean v1, p0, Lcom/google/ads/g;->j:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    float-to-int v1, v1

    const/16 v2, 0x190

    if-gt v1, v2, :cond_4

    const/16 v1, 0x20

    .line 190
    :goto_2
    new-instance v2, Lcom/google/ads/g;

    iget-object v3, p0, Lcom/google/ads/g;->l:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/ads/g;-><init>(IILjava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/google/ads/g;->j:Z

    iput-boolean v0, v2, Lcom/google/ads/g;->j:Z

    .line 192
    iget-boolean v0, p0, Lcom/google/ads/g;->i:Z

    iput-boolean v0, v2, Lcom/google/ads/g;->i:Z

    .line 193
    iget-boolean v0, p0, Lcom/google/ads/g;->k:Z

    iput-boolean v0, v2, Lcom/google/ads/g;->k:Z

    move-object p0, v2

    .line 195
    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/g;->a()I

    move-result v0

    goto :goto_1

    .line 187
    :cond_4
    const/16 v2, 0x2d0

    if-gt v1, v2, :cond_5

    const/16 v1, 0x32

    goto :goto_2

    :cond_5
    const/16 v1, 0x5a

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/ads/g;->b()I

    move-result v1

    goto :goto_2
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/ads/g;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/ads/g;->h:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/google/ads/g;->g:I

    if-gez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ad size was not set before getWidth() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget v0, p0, Lcom/google/ads/g;->g:I

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/google/ads/g;->h:I

    if-gez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Ad size was not set before getHeight() was called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget v0, p0, Lcom/google/ads/g;->h:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/ads/g;->i:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/ads/g;->j:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/ads/g;->k:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 203
    instance-of v1, p1, Lcom/google/ads/g;

    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    check-cast p1, Lcom/google/ads/g;

    .line 209
    iget v1, p0, Lcom/google/ads/g;->g:I

    iget v2, p1, Lcom/google/ads/g;->g:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/ads/g;->h:I

    iget v2, p1, Lcom/google/ads/g;->h:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 217
    iget v0, p0, Lcom/google/ads/g;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/ads/g;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/ads/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/g;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
