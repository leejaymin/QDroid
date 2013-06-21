.class public final Lep;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Landroid/view/View;Landroid/view/View;F)F
    .locals 1

    :goto_0
    if-ne p0, p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_0
.end method
