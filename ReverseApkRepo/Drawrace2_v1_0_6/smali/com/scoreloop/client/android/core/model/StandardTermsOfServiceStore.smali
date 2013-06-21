.class public Lcom/scoreloop/client/android/core/model/StandardTermsOfServiceStore;
.super Lcom/scoreloop/client/android/core/util/PreferencesStore;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/PreferencesStore",
        "<",
        "Lcom/scoreloop/client/android/core/model/TermsOfService;",
        ">;",
        "Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/PreferencesStore;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "com.scoreloop.terms_and_conditions"

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Ljava/util/Date;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/StandardTermsOfServiceStore;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 38
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "version"

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService;

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->PENDING:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;-><init>(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    return-object v0
.end method
