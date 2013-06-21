.class final Lcom/scoreloop/client/android/core/model/User$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/model/User;->assignImage(Lcom/scoreloop/client/android/core/model/Image;Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/scoreloop/client/android/core/model/Image;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/model/Image;

.field private synthetic b:Lcom/scoreloop/client/android/core/model/Continuation;

.field private synthetic c:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Image;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/User$1;->c:Lcom/scoreloop/client/android/core/model/User;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/User$1;->a:Lcom/scoreloop/client/android/core/model/Image;

    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/User$1;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User$1;->a:Lcom/scoreloop/client/android/core/model/Image;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Image;->toUserImagePng()[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 355
    check-cast p1, [B

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User$1;->c:Lcom/scoreloop/client/android/core/model/User;

    invoke-static {p1}, Lcom/scoreloop/client/android/core/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->a(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User$1;->c:Lcom/scoreloop/client/android/core/model/User;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_SCORELOOP:Lcom/scoreloop/client/android/core/model/ImageSource;

    invoke-interface {v1}, Lcom/scoreloop/client/android/core/model/ImageSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->b(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/User$1;->c:Lcom/scoreloop/client/android/core/model/User;

    const-string v1, "image/png"

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->c(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/User$1;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
