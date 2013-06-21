.class public final Lcom/mosaicture/g/c;
.super Landroid/support/v4/c/c;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/c/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()I
    .locals 1

    const/16 v0, 0x2400

    return v0
.end method

.method protected final synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    move-object p3, v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    move-object p4, v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/c/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
