.class public final Lcom/tequnique/camerax/bw;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tequnique/camerax/bw;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/bw;->b:[F

    iput v1, p0, Lcom/tequnique/camerax/bw;->c:I

    iput v2, p0, Lcom/tequnique/camerax/bw;->a:I

    iget v0, p0, Lcom/tequnique/camerax/bw;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tequnique/camerax/bw;->b:[F

    iput v1, p0, Lcom/tequnique/camerax/bw;->c:I

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tequnique/camerax/bw;->b:[F

    iget v2, p0, Lcom/tequnique/camerax/bw;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tequnique/camerax/bw;->c:I

    aput p1, v1, v2

    iget v1, p0, Lcom/tequnique/camerax/bw;->c:I

    iget v2, p0, Lcom/tequnique/camerax/bw;->a:I

    if-lt v1, v2, :cond_0

    iput v0, p0, Lcom/tequnique/camerax/bw;->c:I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tequnique/camerax/bw;->a:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/tequnique/camerax/bw;->a:I

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0

    :cond_1
    iget-object v2, p0, Lcom/tequnique/camerax/bw;->b:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
