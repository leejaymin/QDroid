.class public Lcom/mosaicture/view/Eula;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Class;

.field final c:[B

.field public d:Lcom/a/a/a/a/a;

.field e:Z

.field f:Z

.field private g:Lcom/mosaicture/view/c;

.field private h:Lcom/a/a/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuQnZ8HtOHU5+OkIt0ZMtjifgIf3KBcgEmjzIxCl56VIL9idMVrL8JbckO3DT+pveSYNrw/gur6xjn1bX8LBd74R8ebHGm/kVUvNPSXJOG7Z/TFBS7RfGtZ1UPWtSCpfJGTRFiXwrO8AMt8EpWeHOxSY0u4ajFzJ7PVeYKyZY/xz4NF8rSBfm36L3kyv30mggricnb5PAVrTpOvis2+yEIEoPFHAfzfpNWxbWY49oXn6kMbidy5KaSEuoAtblAFhRFzYqs042pAHJeQsR+YsNVeWo0UHMZ+XI6HsKhw7SWomPxt8LMf82e6Bwaj0fQ+C+jlTpXTsyRWc52LnRr1DoJQIDAQAB"

    iput-object v0, p0, Lcom/mosaicture/view/Eula;->a:Ljava/lang/String;

    const-class v0, Lcom/mosaicture/view/MosaictureActivity;

    iput-object v0, p0, Lcom/mosaicture/view/Eula;->b:Ljava/lang/Class;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mosaicture/view/Eula;->c:[B

    iput-boolean v1, p0, Lcom/mosaicture/view/Eula;->e:Z

    iput-boolean v1, p0, Lcom/mosaicture/view/Eula;->f:Z

    return-void

    :array_0
    .array-data 0x1
        0xdbt
        0x38t
        0x15t
        0x90t
        0x97t
        0xe5t
        0x41t
        0xc5t
        0x2at
        0x4ft
        0xaat
        0xdct
        0x44t
        0x81t
        0xdbt
        0x85t
        0xf6t
        0x21t
        0xbct
        0x63t
    .end array-data
.end method

.method static synthetic a(Lcom/mosaicture/view/Eula;)Lcom/a/a/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/Eula;->h:Lcom/a/a/a/a/i;

    return-object v0
.end method

.method static synthetic a(Lcom/mosaicture/view/Eula;Lcom/a/a/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/Eula;->h:Lcom/a/a/a/a/i;

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/Eula;Lcom/mosaicture/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/Eula;->g:Lcom/mosaicture/view/c;

    return-void
.end method

.method static synthetic b(Lcom/mosaicture/view/Eula;)Lcom/mosaicture/view/c;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/Eula;->g:Lcom/mosaicture/view/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/mosaicture/view/Eula;->overridePendingTransition(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/mosaicture/view/Eula;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/Eula;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/Eula;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mosaicture/view/Eula;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mosaicture/view/b;->b:Lcom/mosaicture/view/b;

    invoke-static {p0, v0, v1}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    return-void
.end method

.method public final b()Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "eula2"

    invoke-virtual {p0, v1, v0}, Lcom/mosaicture/view/Eula;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "access_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "obfu_access_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "access_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "obfu_access_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/mosaicture/view/Eula;->d:Lcom/a/a/a/a/a;

    iget-object v4, p0, Lcom/mosaicture/view/Eula;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/a/a/a/a/u; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/a/a/a/a/u;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/Eula;->setContentView(I)V

    new-instance v0, Lcom/mosaicture/view/e;

    invoke-direct {v0, p0, v2}, Lcom/mosaicture/view/e;-><init>(Lcom/mosaicture/view/Eula;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
