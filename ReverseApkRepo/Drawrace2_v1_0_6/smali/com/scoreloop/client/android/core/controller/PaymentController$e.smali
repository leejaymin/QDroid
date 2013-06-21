.class Lcom/scoreloop/client/android/core/controller/PaymentController$e;
.super Lcom/scoreloop/client/android/core/controller/PaymentController$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const-string v0, "/service/games/%s/users/%s/payments/%s/refund"

    sput-object v0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/Payment$Credential;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct/range {p0 .. p5}, Lcom/scoreloop/client/android/core/controller/PaymentController$f;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    .line 149
    const-class v0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController$e;->a(Ljava/lang/Object;)V

    .line 150
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    sget-object v0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;->d:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;->a:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PaymentController$e;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
