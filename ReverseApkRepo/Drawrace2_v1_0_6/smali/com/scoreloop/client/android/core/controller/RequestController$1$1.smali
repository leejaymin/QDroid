.class final Lcom/scoreloop/client/android/core/controller/RequestController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/RequestController$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Exception;

.field private synthetic b:Lcom/scoreloop/client/android/core/controller/RequestController$1;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController$1;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController$1;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController$1;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/RequestController$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController$1;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/controller/RequestController$1;->a:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/server/Request;)V

    .line 364
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController$1;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/RequestController$1;->b:Lcom/scoreloop/client/android/core/controller/RequestController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$1$1;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Ljava/lang/Exception;)V

    .line 365
    return-void
.end method
