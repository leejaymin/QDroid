.class public Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;
.implements Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

.field private final c:Lcom/scoreloop/client/android/core/model/Session;

.field private final d:Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->c:Lcom/scoreloop/client/android/core/model/Session;

    .line 21
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-direct {v0, v1, p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->b:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    .line 22
    new-instance v0, Lcom/scoreloop/client/android/core/model/StandardTermsOfServiceStore;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/StandardTermsOfServiceStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->d:Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/core/controller/TermsOfServiceException;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceException;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->a:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->b:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->query(Landroid/app/Activity;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->b:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->isUpToDate()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->d:Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    return-object v0
.end method

.method public termsOfServiceControllerDidFinish(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Ljava/lang/Boolean;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->a:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->a:Ljava/util/List;

    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Continuation;

    .line 37
    invoke-interface {v0, p2, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceException;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceException;-><init>()V

    move-object v1, v0

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/model/Session;->a(Ljava/lang/Boolean;)V

    .line 40
    return-void
.end method
