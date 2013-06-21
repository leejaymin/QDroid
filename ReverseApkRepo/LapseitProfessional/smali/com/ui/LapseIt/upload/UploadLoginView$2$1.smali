.class Lcom/ui/LapseIt/upload/UploadLoginView$2$1;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/upload/UploadLoginView$2;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$2;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadLoginView$2$1;)Lcom/ui/LapseIt/upload/UploadLoginView$2;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    const-string v1, "trace"

    sget-object v2, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    const-string v3, "me"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$2;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadLoginView$2;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView$2;)Lcom/ui/LapseIt/upload/UploadLoginView;

    move-result-object v2

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->facebookLogin:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$3(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$2$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$2;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView$2;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadLoginView$2;->access$0(Lcom/ui/LapseIt/upload/UploadLoginView$2;)Lcom/ui/LapseIt/upload/UploadLoginView;

    move-result-object v1

    new-instance v2, Lcom/ui/LapseIt/upload/UploadLoginView$2$1$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$2$1$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$2$1;)V

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
