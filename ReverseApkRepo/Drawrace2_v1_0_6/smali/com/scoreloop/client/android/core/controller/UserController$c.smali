.class Lcom/scoreloop/client/android/core/controller/UserController$c;
.super Lcom/scoreloop/client/android/core/controller/UserController$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/scoreloop/client/android/core/controller/UserController$c;

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UserController$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/scoreloop/client/android/core/controller/UserController$f;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/User;)V

    .line 168
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UserController$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/UserController$c;->a(Ljava/lang/Object;)V

    .line 169
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const-string v0, "/service/users/%s/buddies/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UserController$c;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/UserController$c;->f:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->DELETE:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
