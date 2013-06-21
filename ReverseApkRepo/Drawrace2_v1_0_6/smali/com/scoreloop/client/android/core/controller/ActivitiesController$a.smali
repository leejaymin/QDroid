.class final Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ActivitiesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Game;

.field private final b:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

.field private final c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 62
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    .line 63
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->b:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    .line 64
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a:Lcom/scoreloop/client/android/core/model/Game;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x0

    .line 71
    sget-object v1, Lcom/scoreloop/client/android/core/controller/ActivitiesController$1;->a:[I

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->b:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "internal error: no _user set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    const-string v0, "/service/users/%s/buddies/last_activities"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a:Lcom/scoreloop/client/android/core/model/Game;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "internal error: no _game set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    const-string v0, "/service/games/%s/activities"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->a:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "internal error: no _user set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    const-string v0, "/service/users/%s/activities"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$a;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "/service/activities"

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
