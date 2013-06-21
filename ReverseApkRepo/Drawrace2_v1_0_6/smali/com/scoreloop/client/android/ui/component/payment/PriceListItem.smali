.class public Lcom/scoreloop/client/android/ui/component/payment/PriceListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "PriceListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/Price;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Price;)V
    .locals 6
    .parameter "activity"
    .parameter "target"

    .prologue
    .line 31
    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Price;->getCurrency()Ljava/lang/String;

    move-result-object v3

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Price;->getAmountInUnits()Ljava/math/BigDecimal;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method
