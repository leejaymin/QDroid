.class final Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;
.super Lcom/scoreloop/client/android/core/util/PreferencesStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/PreferencesStore",
        "<",
        "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/PreferencesStore;-><init>(Landroid/content/Context;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "com.scoreloop.payments.store"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "entries"

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;-><init>()V

    return-object v0
.end method
