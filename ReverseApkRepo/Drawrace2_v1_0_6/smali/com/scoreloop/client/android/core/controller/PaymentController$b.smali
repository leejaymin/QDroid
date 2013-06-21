.class Lcom/scoreloop/client/android/core/controller/PaymentController$b;
.super Lcom/scoreloop/client/android/core/controller/PaymentController$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scoreloop/client/android/core/controller/PaymentController$d;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;)V

    .line 67
    const-class v0, Lcom/scoreloop/client/android/core/controller/PaymentController$b;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController$b;->a(Ljava/lang/Object;)V

    .line 68
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentController$b;->a(J)V

    .line 69
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v0, "/service/games/%s/users/%s/payments/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$b;->a:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$b;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$b;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
