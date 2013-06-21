.class public final Lcom/mosaicture/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mosaicture/c/c;


# direct methods
.method public constructor <init>(Lcom/mosaicture/c/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mosaicture/c/e;->a:Lcom/mosaicture/c/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/mosaicture/d/a;Z)V
    .locals 3

    new-instance v1, Lcom/mosaicture/b/a;

    invoke-direct {v1}, Lcom/mosaicture/b/a;-><init>()V

    iget-object v2, p0, Lcom/mosaicture/c/e;->a:Lcom/mosaicture/c/c;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/mosaicture/c/a;->f:Lcom/mosaicture/c/a;

    :goto_0
    invoke-virtual {v1, p1, v2, v0}, Lcom/mosaicture/b/a;->a(Lcom/mosaicture/d/a;Lcom/mosaicture/c/c;Lcom/mosaicture/c/a;)V

    return-void

    :cond_0
    sget-object v0, Lcom/mosaicture/c/a;->e:Lcom/mosaicture/c/a;

    goto :goto_0
.end method
