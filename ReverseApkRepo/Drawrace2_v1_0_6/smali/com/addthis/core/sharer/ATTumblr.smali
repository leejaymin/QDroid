.class public Lcom/addthis/core/sharer/ATTumblr;
.super Lcom/addthis/core/sharer/ATSharer;
.source "ATTumblr.java"

# interfaces
.implements Lcom/addthis/ui/views/ATOAuthDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;,
        Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tumblr class"

.field private static final TUMBLR_AUTH_URL:Ljava/lang/String; = "http://www.tumblr.com/api/authenticate"

.field private static final TUMBLR_PREF:Ljava/lang/String; = "attumblr_pref"

.field private static final TUMBLR_PREF_PASSWORD:Ljava/lang/String; = "attumblr_pref_password"

.field private static final TUMBLR_PREF_USERNAME:Ljava/lang/String; = "attumblr_pref_username"

.field private static final TUMBLR_WRITE_URL:Ljava/lang/String; = "https://www.tumblr.com/api/write"


# instance fields
.field private mAuthDialog:Lcom/addthis/ui/views/ATPlainAuthDialog;

.field private mPassword:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 1
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/addthis/core/sharer/ATSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mAuthDialog:Lcom/addthis/ui/views/ATPlainAuthDialog;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/addthis/core/sharer/ATTumblr;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATTumblr;->successfullyAuthenticated()V

    return-void
.end method

.method static synthetic access$1(Lcom/addthis/core/sharer/ATTumblr;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATTumblr;->failedToAuthenticate()V

    return-void
.end method

.method static synthetic access$2(Lcom/addthis/core/sharer/ATTumblr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/addthis/core/sharer/ATTumblr;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method private failedToAuthenticate()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 136
    return-void
.end method

.method private isAuthenticated()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 93
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATShareActivity;

    const-string v3, "attumblr_pref"

    invoke-virtual {v1, v3, v2}, Lcom/addthis/ui/activities/ATShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "attumblr_pref_username"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mUsername:Ljava/lang/String;

    .line 95
    const-string v1, "attumblr_pref_password"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mPassword:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mPassword:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 99
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private successfullyAuthenticated()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mAuthDialog:Lcom/addthis/ui/views/ATPlainAuthDialog;

    invoke-virtual {v0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->dismiss()V

    .line 130
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATTumblr;->isAuthenticated()Z

    .line 131
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->showShareView()V

    .line 132
    return-void
.end method


# virtual methods
.method protected logout()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/addthis/ui/activities/ATShareActivity;

    const-string v3, "attumblr_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/addthis/ui/activities/ATShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "attumblr_pref_username"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string v2, "attumblr_pref_password"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public logoutSharer()V
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATTumblr;->logout()V

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTumblr;->didCompleteShare(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onAuthViewCancel()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mAuthDialog:Lcom/addthis/ui/views/ATPlainAuthDialog;

    invoke-virtual {v0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->dismiss()V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTumblr;->didCompleteShare(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onAuthViewComplete(Landroid/os/Bundle;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    .line 119
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, ""

    iget-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATShareActivity;

    .line 120
    iget-object v2, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "loading_please_wait_msg"

    invoke-static {v2, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 119
    invoke-virtual {v1, v2}, Lcom/addthis/ui/activities/ATShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 122
    new-instance v0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;

    invoke-direct {v0, p0}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;-><init>(Lcom/addthis/core/sharer/ATTumblr;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "plainUserName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "plainPassword"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method public share()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATTumblr;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->showShareView()V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Lcom/addthis/ui/views/ATPlainAuthDialog;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/addthis/core/sharer/ATTumblr;->mService:Lcom/addthis/models/ATService;

    invoke-direct {v1, v0, v2, p0}, Lcom/addthis/ui/views/ATPlainAuthDialog;-><init>(Landroid/content/Context;Lcom/addthis/models/ATService;Lcom/addthis/ui/views/ATOAuthDialogListener;)V

    iput-object v1, p0, Lcom/addthis/core/sharer/ATTumblr;->mAuthDialog:Lcom/addthis/ui/views/ATPlainAuthDialog;

    .line 77
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr;->mAuthDialog:Lcom/addthis/ui/views/ATPlainAuthDialog;

    invoke-virtual {v0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->show()V

    goto :goto_0
.end method

.method public shareMessage(Landroid/os/Bundle;)V
    .locals 3
    .parameter "messageValues"

    .prologue
    .line 84
    const-string v0, "Tumblr class"

    const-string v1, "Share message =========== "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;

    invoke-direct {v0, p0}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;-><init>(Lcom/addthis/core/sharer/ATTumblr;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method
