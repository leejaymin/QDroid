.class abstract Lcom/scoreloop/client/android/core/controller/PaymentController$d;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# instance fields
.field protected a:Lcom/scoreloop/client/android/core/model/Game;

.field protected b:Lcom/scoreloop/client/android/core/model/Payment;

.field protected c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method protected constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 91
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$d;->a:Lcom/scoreloop/client/android/core/model/Game;

    .line 92
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$d;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 93
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$d;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 94
    return-void
.end method
