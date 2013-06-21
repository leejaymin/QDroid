.class Lcom/ui/LapseIt/upload/UploadService$2;
.super Ljava/lang/Object;
.source "UploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadService;->uploadToURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadService;

.field private final synthetic val$galleryUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadService;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadService$2;->this$0:Lcom/ui/LapseIt/upload/UploadService;

    iput-object p2, p0, Lcom/ui/LapseIt/upload/UploadService$2;->val$galleryUri:Landroid/net/Uri;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 152
    :try_start_0
    sget-object v3, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    if-eqz v3, :cond_0

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, faceBundle:Landroid/os/Bundle;
    const-string v3, "message"

    const-string v4, "I\'ve just upload an amazing time lapse video !"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "link"

    iget-object v4, p0, Lcom/ui/LapseIt/upload/UploadService$2;->val$galleryUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v3, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    const-string v4, "me/feed"

    const-string v5, "POST"

    invoke-virtual {v3, v4, v1, v5}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, facebookPost:Ljava/lang/String;
    const-string v3, "trace"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .end local v1           #faceBundle:Landroid/os/Bundle;
    .end local v2           #facebookPost:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
