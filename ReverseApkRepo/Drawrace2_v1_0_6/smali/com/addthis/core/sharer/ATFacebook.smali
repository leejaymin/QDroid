.class public Lcom/addthis/core/sharer/ATFacebook;
.super Lcom/addthis/core/sharer/ATSharer;
.source "ATFacebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;,
        Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Facebook"

.field public static isEnabled:Ljava/lang/Boolean;


# instance fields
.field loginListener:Lcom/facebook/android/Facebook$DialogListener;

.field private mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field private mFacebook:Lcom/facebook/android/Facebook;

.field wallPostListener:Lcom/facebook/android/Facebook$DialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/addthis/core/sharer/ATFacebook;->isEnabled:Ljava/lang/Boolean;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 1
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/addthis/core/sharer/ATSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    .line 206
    new-instance v0, Lcom/addthis/core/sharer/ATFacebook$1;

    invoke-direct {v0, p0}, Lcom/addthis/core/sharer/ATFacebook$1;-><init>(Lcom/addthis/core/sharer/ATFacebook;)V

    iput-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->wallPostListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 237
    new-instance v0, Lcom/addthis/core/sharer/ATFacebook$2;

    invoke-direct {v0, p0}, Lcom/addthis/core/sharer/ATFacebook$2;-><init>(Lcom/addthis/core/sharer/ATFacebook;)V

    iput-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->loginListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/addthis/core/sharer/ATFacebook;)Lcom/facebook/android/Facebook;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$1(Lcom/addthis/core/sharer/ATFacebook;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATFacebook;->postOnWall()V

    return-void
.end method

.method private initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "Facebook"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getFacebookAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/addthis/error/ATSharerException;

    const-string v1, "Appid not present for facebook"

    invoke-direct {v0, v1}, Lcom/addthis/error/ATSharerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Lcom/facebook/android/Facebook;

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/core/Config;->getFacebookAppId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    .line 77
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 78
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/addthis/core/sharer/ATSessions;->restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 79
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string v0, "Facebook"

    const-string v1, "Session invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 82
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/addthis/core/sharer/ATFacebook;->loginListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 81
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATFacebook;->postOnWall()V

    goto :goto_0
.end method

.method private logout()V
    .locals 5

    .prologue
    .line 291
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATShareActivity;

    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "loging_out"

    invoke-static {v2, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/addthis/ui/activities/ATShareActivity;->showProgressDialog(I)V

    .line 294
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    .line 295
    .local v0, asyncRunner:Lcom/facebook/android/AsyncFacebookRunner;
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;

    invoke-direct {v2, p0}, Lcom/addthis/core/sharer/ATFacebook$FBLogoutListener;-><init>(Lcom/addthis/core/sharer/ATFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    goto :goto_0
.end method

.method private postImage()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->showShareView()V

    .line 126
    return-void
.end method

.method private postOnWall()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v0}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATFacebook;->postImage()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATFacebook;->postURL()V

    goto :goto_0
.end method

.method private postURL()V
    .locals 5

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, parameters:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "app_id"

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/addthis/core/Config;->getFacebookAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "link"

    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v2}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "caption"

    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v2}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "description"

    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v2}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "feed"

    .line 114
    iget-object v4, p0, Lcom/addthis/core/sharer/ATFacebook;->wallPostListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 113
    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v3}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v3}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/addthis/core/sharer/ATFacebook;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "stream.publish"

    .line 119
    iget-object v4, p0, Lcom/addthis/core/sharer/ATFacebook;->wallPostListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 118
    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method


# virtual methods
.method public logoutSharer()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATFacebook;->logout()V

    .line 302
    return-void
.end method

.method public share()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getFacebookAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "175729095772478"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v1, "Please change the Facebook app id with your own id in Config.java"

    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/addthis/utils/ATUtil;->showNotificationToast(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATFacebook;->initialize()V

    .line 57
    return-void
.end method

.method public shareMessage(Landroid/os/Bundle;)V
    .locals 10
    .parameter "messageValues"

    .prologue
    const/4 v1, 0x0

    .line 261
    move-object v8, v1

    check-cast v8, [B

    .line 262
    .local v8, data:[B
    const-string v0, "sharetitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v0}, Lcom/addthis/models/ATShareItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 264
    .local v7, bi:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 265
    const-string v0, "Facebook"

    const-string v3, "Image is present image"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v7, v0, v3, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 268
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 269
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v2, params:Landroid/os/Bundle;
    const-string v0, "method"

    const-string v3, "photos.upload"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "caption"

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "picture"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 273
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    iget-object v3, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "uploading_please_wait"

    invoke-static {v3, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/addthis/ui/activities/ATShareActivity;->showProgressDialog(I)V

    .line 274
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v3, "POST"

    new-instance v4, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;

    invoke-direct {v4, p0}, Lcom/addthis/core/sharer/ATFacebook$FBUploadListener;-><init>(Lcom/addthis/core/sharer/ATFacebook;)V

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 282
    .end local v2           #params:Landroid/os/Bundle;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 279
    iget-object v1, p0, Lcom/addthis/core/sharer/ATFacebook;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "an_error_occured"

    invoke-static {v1, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATFacebook;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0
.end method
