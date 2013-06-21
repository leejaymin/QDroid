.class public final Lcom/facebook/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/facebook/android/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "https://www.facebook.com/dialog/oauth"

    sput-object v0, Lcom/facebook/android/b;->a:Ljava/lang/String;

    .line 68
    const-string v0, "https://www.facebook.com/connect/uiserver.php"

    sput-object v0, Lcom/facebook/android/b;->b:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/android/b;->c:Ljava/lang/String;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/android/b;->d:J

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/facebook/android/b;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/facebook/android/b;)Lcom/facebook/android/b$a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/android/b;->f:Lcom/facebook/android/b$a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/b$a;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p3, p0, Lcom/facebook/android/b;->f:Lcom/facebook/android/b$a;

    .line 170
    iget-object v0, p0, Lcom/facebook/android/b;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "client_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    if-lez v0, :cond_0

    const-string v0, "scope"

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const-string v2, "login"

    new-instance v3, Lcom/facebook/android/c;

    invoke-direct {v3, p0}, Lcom/facebook/android/c;-><init>(Lcom/facebook/android/b;)V

    const-string v0, "login"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/android/b;->a:Ljava/lang/String;

    const-string v2, "type"

    const-string v4, "user_agent"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "redirect_uri"

    const-string v4, "fbconnect://success"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "display"

    const-string v4, "touch"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/android/b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "access_token"

    iget-object v4, p0, Lcom/facebook/android/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/android/c;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 177
    :goto_1
    return-void

    .line 170
    :cond_2
    sget-object v0, Lcom/facebook/android/b;->b:Ljava/lang/String;

    const-string v4, "method"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "next"

    const-string v4, "fbconnect://success"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/facebook/android/e;

    invoke-direct {v1, p1, v0, v3}, Lcom/facebook/android/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/b$a;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/android/e;->setCancelable(Z)V

    new-instance v0, Lcom/facebook/android/b$1;

    invoke-direct {v0, v3}, Lcom/facebook/android/b$1;-><init>(Lcom/facebook/android/b$a;)V

    invoke-virtual {v1, v0}, Lcom/facebook/android/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Lcom/facebook/android/e;->show()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/facebook/android/b;->c:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 594
    iget-object v0, p0, Lcom/facebook/android/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/android/b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/android/b;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/facebook/android/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 645
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/android/b;->d:J

    .line 648
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 614
    iget-wide v0, p0, Lcom/facebook/android/b;->d:J

    return-wide v0
.end method
