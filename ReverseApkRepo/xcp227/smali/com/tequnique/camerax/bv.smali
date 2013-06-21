.class public final Lcom/tequnique/camerax/bv;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/tequnique/camerax/bv;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/bv;->b:[I

    iput v1, p0, Lcom/tequnique/camerax/bv;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tequnique/camerax/bv;->a:I

    iget v0, p0, Lcom/tequnique/camerax/bv;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tequnique/camerax/bv;->b:[I

    iput v1, p0, Lcom/tequnique/camerax/bv;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tequnique/camerax/bv;->b:[I

    iget v2, p0, Lcom/tequnique/camerax/bv;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tequnique/camerax/bv;->c:I

    aput p1, v1, v2

    iget v1, p0, Lcom/tequnique/camerax/bv;->c:I

    iget v2, p0, Lcom/tequnique/camerax/bv;->a:I

    if-lt v1, v2, :cond_0

    iput v0, p0, Lcom/tequnique/camerax/bv;->c:I

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/tequnique/camerax/bv;->a:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/tequnique/camerax/bv;->a:I

    div-int v0, v1, v0

    return v0

    :cond_1
    iget-object v2, p0, Lcom/tequnique/camerax/bv;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
