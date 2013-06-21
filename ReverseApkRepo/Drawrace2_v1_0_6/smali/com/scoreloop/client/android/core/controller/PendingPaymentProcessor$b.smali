.class final Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;
.super Lcom/scoreloop/client/android/core/util/JSONListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/JSONListAdapter",
        "<",
        "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/JSONListAdapter;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/JSONListAdapter;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;->a(Ljava/util/List;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected final bridge synthetic b()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;-><init>()V

    return-object v0
.end method
