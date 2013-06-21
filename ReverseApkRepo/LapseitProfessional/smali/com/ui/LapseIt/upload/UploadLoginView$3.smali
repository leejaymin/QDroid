.class Lcom/ui/LapseIt/upload/UploadLoginView$3;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadLoginView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$3;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 195
    :try_start_0
    sget-object v7, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    const-string v8, "me"

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v8, v9}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, facebookMe:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, meJSON:Lorg/json/JSONObject;
    const-string v7, "gender"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, meGender:Ljava/lang/String;
    const-string v7, "male"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/flurry/android/FlurryAgent;->setGender(B)V

    .line 204
    :goto_0
    const-string v7, "username"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, meUsername:Ljava/lang/String;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, meName:Ljava/lang/String;
    const-string v7, "email"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, email:Ljava/lang/String;
    iget-object v7, p0, Lcom/ui/LapseIt/upload/UploadLoginView$3;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #calls: Lcom/ui/LapseIt/upload/UploadLoginView;->insertFacebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v6, v5, v3, v1}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$5(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #facebookMe:Ljava/lang/String;
    .end local v3           #meGender:Ljava/lang/String;
    .end local v4           #meJSON:Lorg/json/JSONObject;
    .end local v5           #meName:Ljava/lang/String;
    .end local v6           #meUsername:Ljava/lang/String;
    :goto_1
    return-void

    .line 202
    .restart local v2       #facebookMe:Ljava/lang/String;
    .restart local v3       #meGender:Ljava/lang/String;
    .restart local v4       #meJSON:Lorg/json/JSONObject;
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/flurry/android/FlurryAgent;->setGender(B)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 210
    .end local v2           #facebookMe:Ljava/lang/String;
    .end local v3           #meGender:Ljava/lang/String;
    .end local v4           #meJSON:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 214
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 215
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
