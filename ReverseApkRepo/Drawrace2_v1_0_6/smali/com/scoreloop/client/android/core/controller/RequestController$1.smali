.class final Lcom/scoreloop/client/android/core/controller/RequestController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/RequestController;->b(Lcom/scoreloop/client/android/core/server/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/scoreloop/client/android/core/server/Request;

.field final synthetic b:Lcom/scoreloop/client/android/core/controller/RequestController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1;->a:Lcom/scoreloop/client/android/core/server/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 354
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    new-instance v1, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;

    invoke-direct {v1, p0, p2}, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController$1;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1;->a:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestController;->b(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/server/Request;)V

    goto :goto_0
.end method
