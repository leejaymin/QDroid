.class final Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/SocialProviderController;->connect(Landroid/app/Activity;)V
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
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 188
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->b(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)Lcom/scoreloop/client/android/core/controller/f;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/f;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-static {v3}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/f;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Lcom/scoreloop/client/android/core/controller/f;)Lcom/scoreloop/client/android/core/controller/f;

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;->a:Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->b(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)Lcom/scoreloop/client/android/core/controller/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/f;->c()V

    goto :goto_0
.end method
