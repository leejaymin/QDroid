.class final Lcom/scoreloop/client/android/core/model/Device$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/model/Device;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/scoreloop/client/android/core/model/Device;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Device;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Device$1;->b:Lcom/scoreloop/client/android/core/model/Device;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/Device$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device$1;->b:Lcom/scoreloop/client/android/core/model/Device;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/Device;->a(Lcom/scoreloop/client/android/core/model/Device;)Lcom/scoreloop/client/android/core/model/DeviceIdStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/DeviceIdStore;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Device$1;->b:Lcom/scoreloop/client/android/core/model/Device;

    iput-object v0, v1, Lcom/scoreloop/client/android/core/model/Device;->b:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Device$1;->b:Lcom/scoreloop/client/android/core/model/Device;

    new-instance v2, Lcom/scoreloop/client/android/core/model/a;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/Device$1;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/scoreloop/client/android/core/model/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/a;->a()Lcom/scoreloop/client/android/core/model/DeviceUuid;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/scoreloop/client/android/core/model/Device;->a(Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/DeviceUuid;)Lcom/scoreloop/client/android/core/model/DeviceUuid;

    return-object v0
.end method
