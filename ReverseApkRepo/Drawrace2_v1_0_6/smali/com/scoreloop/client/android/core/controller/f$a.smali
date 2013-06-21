.class final Lcom/scoreloop/client/android/core/controller/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static synthetic a:Z


# instance fields
.field private synthetic b:Lcom/scoreloop/client/android/core/controller/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/scoreloop/client/android/core/controller/f$a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/f;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/f$a;-><init>(Lcom/scoreloop/client/android/core/controller/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/f$a;->b:Lcom/scoreloop/client/android/core/controller/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 39
    instance-of v0, p2, Lcom/scoreloop/client/android/core/controller/RequestCancelledException;

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f$a;->b:Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/f;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    .line 45
    sget-boolean v1, Lcom/scoreloop/client/android/core/controller/f$a;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->f()Lcom/scoreloop/client/android/core/model/Session$State;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->FAILED:Lcom/scoreloop/client/android/core/model/Session$State;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(Lcom/scoreloop/client/android/core/model/Session$State;)V

    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f$a;->b:Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/controller/f;->a(Ljava/lang/Exception;)V

    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f$a;->b:Lcom/scoreloop/client/android/core/controller/f;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/f;->a(Lcom/scoreloop/client/android/core/controller/f;)Lcom/scoreloop/client/android/core/controller/b;

    goto :goto_0
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f$a;->b:Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/f;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    .line 62
    sget-boolean v1, Lcom/scoreloop/client/android/core/controller/f$a;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->f()Lcom/scoreloop/client/android/core/model/Session$State;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->d()Lcom/scoreloop/client/android/core/model/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/User;->d(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f$a;->b:Lcom/scoreloop/client/android/core/controller/f;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/f;->a(Lcom/scoreloop/client/android/core/controller/f;)Lcom/scoreloop/client/android/core/controller/b;

    .line 73
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "device identifier missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
