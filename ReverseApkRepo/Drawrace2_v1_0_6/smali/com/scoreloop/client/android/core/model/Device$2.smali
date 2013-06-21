.class final Lcom/scoreloop/client/android/core/model/Device$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/model/Device;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/model/Device;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Device;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Device$2;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device$2;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Device;->a(Lcom/scoreloop/client/android/core/model/Device;)Lcom/scoreloop/client/android/core/model/DeviceIdStore;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
