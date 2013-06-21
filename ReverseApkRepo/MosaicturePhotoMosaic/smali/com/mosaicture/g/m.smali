.class final Lcom/mosaicture/g/m;
.super Lcom/mosaicture/g/l;


# instance fields
.field final synthetic a:Lcom/mosaicture/g/l;


# direct methods
.method private constructor <init>(Lcom/mosaicture/g/l;Lcom/mosaicture/g/l;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/g/m;->a:Lcom/mosaicture/g/l;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mosaicture/g/l;-><init>(Lcom/mosaicture/g/l;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mosaicture/g/l;Lcom/mosaicture/g/l;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaicture/g/m;-><init>(Lcom/mosaicture/g/l;Lcom/mosaicture/g/l;)V

    return-void
.end method


# virtual methods
.method protected final a([F[F)F
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected final a([F[F[F)F
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
