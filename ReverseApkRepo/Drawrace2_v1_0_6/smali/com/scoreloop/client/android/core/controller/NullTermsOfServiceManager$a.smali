.class final Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager$a;
.super Lcom/scoreloop/client/android/core/util/NullStore;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/NullStore",
        "<",
        "Lcom/scoreloop/client/android/core/model/TermsOfService;",
        ">;",
        "Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService;

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;-><init>(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/NullStore;-><init>(Lcom/scoreloop/client/android/core/util/JSONSerializable;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    return-void
.end method
