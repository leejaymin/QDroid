.class public Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager$a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager$a;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager;->a:Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    .line 29
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
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager;->a:Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    return-object v0
.end method
