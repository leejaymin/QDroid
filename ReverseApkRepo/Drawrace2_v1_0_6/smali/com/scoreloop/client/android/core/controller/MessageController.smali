.class public Lcom/scoreloop/client/android/core/controller/MessageController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/MessageController$e;,
        Lcom/scoreloop/client/android/core/controller/MessageController$d;,
        Lcom/scoreloop/client/android/core/controller/MessageController$c;,
        Lcom/scoreloop/client/android/core/controller/MessageController$b;,
        Lcom/scoreloop/client/android/core/controller/MessageController$a;
    }
.end annotation


# static fields
.field public static final INVITATION_TARGET:Ljava/lang/Object;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end field

.field public static final RECEIVER_EMAIL:Ljava/lang/Object;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation
.end field

.field public static final RECEIVER_SYSTEM:Ljava/lang/Object;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final RECEIVER_USER:Ljava/lang/Object;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final TYPE_ABUSE_REPORT:I
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final TYPE_RECOMMENDATION:I
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final TYPE_TARGET_INFERRED:I
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field


# instance fields
.field private final b:Lcom/scoreloop/client/android/core/model/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController$b;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/MessageController$b;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/MessageController;->INVITATION_TARGET:Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController$a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/MessageController$a;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/MessageController;->RECEIVER_EMAIL:Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController$d;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/MessageController$d;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/MessageController;->RECEIVER_SYSTEM:Ljava/lang/Object;

    .line 233
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController$e;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/MessageController$e;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/MessageController;->RECEIVER_USER:Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->ABUSE_REPORT:Lcom/scoreloop/client/android/core/model/Message$Type;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message$Type;->ordinal()I

    move-result v0

    sput v0, Lcom/scoreloop/client/android/core/controller/MessageController;->TYPE_ABUSE_REPORT:I

    .line 245
    sget-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->RECOMMENDATION:Lcom/scoreloop/client/android/core/model/Message$Type;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message$Type;->ordinal()I

    move-result v0

    sput v0, Lcom/scoreloop/client/android/core/controller/MessageController;->TYPE_RECOMMENDATION:I

    .line 251
    sget-object v0, Lcom/scoreloop/client/android/core/model/Message$Type;->TARGET_INFERRED:Lcom/scoreloop/client/android/core/model/Message$Type;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message$Type;->ordinal()I

    move-result v0

    sput v0, Lcom/scoreloop/client/android/core/controller/MessageController;->TYPE_TARGET_INFERRED:I

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/MessageController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 253
    new-instance v0, Lcom/scoreloop/client/android/core/model/Message;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/Message;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    .line 280
    return-void
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    .line 428
    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    .line 429
    invoke-static {p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->a(Lcom/scoreloop/client/android/core/server/Response;)Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->getErrorCode()I

    move-result v0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_0

    .line 431
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->getUserInfo()Ljava/util/Map;

    move-result-object v0

    const-string v2, "disconnectedProviderIdentifiers"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/model/SocialProvider;->a(Lcom/scoreloop/client/android/core/model/User;)V

    goto :goto_0

    .line 437
    :cond_0
    throw v1

    .line 439
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public varargs addReceiverWithUsers(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 317
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    check-cast p1, Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    .line 322
    invoke-interface {p1, p2}, Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    if-nez v0, :cond_2

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid users"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    new-instance v2, Lcom/scoreloop/client/android/core/model/MessageReceiver;

    invoke-direct {v2, p1, v0}, Lcom/scoreloop/client/android/core/model/MessageReceiver;-><init>(Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Message;->a(Lcom/scoreloop/client/android/core/model/MessageReceiver;)V

    .line 328
    return-void
.end method

.method public getMessageType()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message;->e()Lcom/scoreloop/client/android/core/model/Message$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message;->c()Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubmitAllowed()Z
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 416
    :goto_0
    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 405
    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Message;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/MessageReceiver;

    .line 410
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/MessageReceiver;->b()Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;->a(Lcom/scoreloop/client/android/core/model/Session;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 412
    goto :goto_0

    .line 416
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMessageType(I)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-static {}, Lcom/scoreloop/client/android/core/model/Message$Type;->values()[Lcom/scoreloop/client/android/core/model/Message$Type;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Message;->a(Lcom/scoreloop/client/android/core/model/Message$Type;)V

    .line 454
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 479
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    if-nez v0, :cond_1

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_1
    check-cast p1, Lcom/scoreloop/client/android/core/model/MessageTargetInterface;

    .line 483
    invoke-interface {p1}, Lcom/scoreloop/client/android/core/model/MessageTargetInterface;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Message;->a(Lcom/scoreloop/client/android/core/model/MessageTargetInterface;)V

    .line 487
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Message;->a(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public submitMessage()V
    .locals 5
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->isSubmitAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "submitting is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->a_()V

    .line 524
    new-instance v0, Lcom/scoreloop/client/android/core/controller/MessageController$c;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/MessageController;->b:Lcom/scoreloop/client/android/core/model/Message;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/MessageController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/MessageController$c;-><init>(Lcom/scoreloop/client/android/core/model/Message;Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;)V

    .line 526
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/MessageController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 527
    return-void
.end method
