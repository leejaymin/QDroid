.class final Lcom/scoreloop/client/android/core/model/DeviceIdStore$d;
.super Lcom/scoreloop/client/android/core/util/PreferencesStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/DeviceIdStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/PreferencesStore",
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
    .line 58
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/PreferencesStore;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "06eae4a4-dd33-473a-be00-8e002f4ca5cc"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "d666187b-357a-41e2-967f-12390d2d2b5b"

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
