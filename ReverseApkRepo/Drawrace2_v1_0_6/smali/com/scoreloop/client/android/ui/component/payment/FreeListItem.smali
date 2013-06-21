.class Lcom/scoreloop/client/android/ui/component/payment/FreeListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "PaymentMethodListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 52
    const v0, 0x7f0802f1

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0802f2

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method
