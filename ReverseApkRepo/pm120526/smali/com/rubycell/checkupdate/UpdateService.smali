.class public Lcom/rubycell/checkupdate/UpdateService;
.super Landroid/app/Service;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/rubycell/checkupdate/UpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rubycell/checkupdate/UpdateService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "time_update"

    const-string v1, "10/05/2012"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/a/a/b;

    invoke-direct {v1}, Lorg/a/a/b;-><init>()V

    const-string v2, "dd/MM/yyyy"

    invoke-static {v2}, Lorg/a/a/d/a;->a(Ljava/lang/String;)Lorg/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/a/a/b;->a(Lorg/a/a/d/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "time_update"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/rubycell/checkupdate/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/checkupdate/UpdateService;->b:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/checkupdate/UpdateService;->c:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/checkupdate/UpdateService;->c:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/checkupdate/UpdateService;->c:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/checkupdate/UpdateService;->c:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/rubycell/checkupdate/UpdateService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    new-instance v0, Lcom/rubycell/checkupdate/a;

    iget-object v1, p0, Lcom/rubycell/checkupdate/UpdateService;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/rubycell/checkupdate/a;-><init>(Lcom/rubycell/checkupdate/UpdateService;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/checkupdate/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/checkupdate/UpdateService;->c:Landroid/os/AsyncTask;

    return-void
.end method
