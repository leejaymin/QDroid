.class public final Lcom/tequnique/camerax/cf;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/tequnique/camerax/cf;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tequnique/camerax/cf;->a:I

    iput v0, p0, Lcom/tequnique/camerax/cf;->b:I

    iput v0, p0, Lcom/tequnique/camerax/cf;->c:I

    iput v0, p0, Lcom/tequnique/camerax/cf;->d:I

    iput p1, p0, Lcom/tequnique/camerax/cf;->a:I

    iput p2, p0, Lcom/tequnique/camerax/cf;->b:I

    iput p3, p0, Lcom/tequnique/camerax/cf;->c:I

    iput p4, p0, Lcom/tequnique/camerax/cf;->d:I

    return-void
.end method
