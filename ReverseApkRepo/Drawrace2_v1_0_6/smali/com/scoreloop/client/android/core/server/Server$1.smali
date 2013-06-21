.class final Lcom/scoreloop/client/android/core/server/Server$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/server/Server;->a(Lcom/scoreloop/client/android/core/server/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/server/Request;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Server$1;->a:Lcom/scoreloop/client/android/core/server/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server$1;->a:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->e()Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/Server$1;->a:Lcom/scoreloop/client/android/core/server/Request;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 253
    return-void
.end method
