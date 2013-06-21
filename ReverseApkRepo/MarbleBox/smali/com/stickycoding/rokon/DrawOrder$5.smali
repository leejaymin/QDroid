.class Lcom/stickycoding/rokon/DrawOrder$5;
.super Ljava/lang/Object;
.source "DrawOrder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/DrawOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/stickycoding/rokon/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/stickycoding/rokon/Drawable;Lcom/stickycoding/rokon/Drawable;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 93
    invoke-interface {p1}, Lcom/stickycoding/rokon/Drawable;->getZ()I

    move-result v0

    invoke-interface {p2}, Lcom/stickycoding/rokon/Drawable;->getZ()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/stickycoding/rokon/Drawable;->getZ()I

    move-result v0

    invoke-interface {p2}, Lcom/stickycoding/rokon/Drawable;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/stickycoding/rokon/Drawable;

    check-cast p2, Lcom/stickycoding/rokon/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/stickycoding/rokon/DrawOrder$5;->compare(Lcom/stickycoding/rokon/Drawable;Lcom/stickycoding/rokon/Drawable;)I

    move-result v0

    return v0
.end method
