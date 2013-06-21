.class public final Lcom/mosaicture/view/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/am;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/am;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/an;->a:Lcom/mosaicture/view/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/mosaicture/view/a/a;

    check-cast p2, Lcom/mosaicture/view/a/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p1, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/mosaicture/view/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method
