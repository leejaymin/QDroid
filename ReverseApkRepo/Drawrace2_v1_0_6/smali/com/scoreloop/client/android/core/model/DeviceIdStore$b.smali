.class final Lcom/scoreloop/client/android/core/model/DeviceIdStore$b;
.super Lcom/scoreloop/client/android/core/util/ExternalFileStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/DeviceIdStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/ExternalFileStore",
        "<",
        "Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/ExternalFileStore;-><init>(Landroid/content/Context;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "fdce0eda-3cc1-4144-b11f-c4bbe62da4a6"

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
