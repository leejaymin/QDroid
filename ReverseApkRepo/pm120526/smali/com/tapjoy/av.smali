.class public final Lcom/tapjoy/av;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tapjoy/av;

.field private static b:Lcom/tapjoy/d;

.field private static c:Lcom/tapjoy/be;

.field private static d:Lcom/tapjoy/ba;

.field private static e:Lcom/tapjoy/bn;


# instance fields
.field private f:I

.field private g:Lcom/tapjoy/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/av;->a:Lcom/tapjoy/av;

    sput-object v0, Lcom/tapjoy/av;->b:Lcom/tapjoy/d;

    sput-object v0, Lcom/tapjoy/av;->c:Lcom/tapjoy/be;

    sput-object v0, Lcom/tapjoy/av;->d:Lcom/tapjoy/ba;

    sput-object v0, Lcom/tapjoy/av;->e:Lcom/tapjoy/bn;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/av;->g:Lcom/tapjoy/h;

    invoke-static {p1, p2, p3}, Lcom/tapjoy/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/tapjoy/av;
    .locals 2

    sget-object v0, Lcom/tapjoy/av;->a:Lcom/tapjoy/av;

    if-nez v0, :cond_0

    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TapjoyConnect"

    const-string v1, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TapjoyConnect"

    const-string v1, "----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/tapjoy/av;->a:Lcom/tapjoy/av;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/av;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/av;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/av;->a:Lcom/tapjoy/av;

    new-instance v0, Lcom/tapjoy/d;

    invoke-direct {v0, p0}, Lcom/tapjoy/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/av;->b:Lcom/tapjoy/d;

    new-instance v0, Lcom/tapjoy/be;

    invoke-direct {v0, p0}, Lcom/tapjoy/be;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/av;->c:Lcom/tapjoy/be;

    new-instance v0, Lcom/tapjoy/ba;

    invoke-direct {v0, p0}, Lcom/tapjoy/ba;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/av;->d:Lcom/tapjoy/ba;

    new-instance v0, Lcom/tapjoy/bn;

    invoke-direct {v0, p0}, Lcom/tapjoy/bn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/av;->e:Lcom/tapjoy/bn;

    return-void
.end method

.method public static a(Lcom/tapjoy/ap;)V
    .locals 3

    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/ap;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/h;->e:Z

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/tapjoy/aw;->g()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    invoke-static {}, Lcom/tapjoy/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/tapjoy/aw;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Lcom/tapjoy/bk;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/av;->b:Lcom/tapjoy/d;

    invoke-virtual {v0, p0}, Lcom/tapjoy/d;->a(Lcom/tapjoy/bk;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tapjoy/aw;->a()Lcom/tapjoy/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/aw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/tapjoy/av;->b:Lcom/tapjoy/d;

    const-string v1, "TapjoyOffers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing offers with userID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/tapjoy/d;->c:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "USER_ID"

    invoke-static {}, Lcom/tapjoy/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "URL_PARAMS"

    invoke-static {}, Lcom/tapjoy/aw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/tapjoy/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/tapjoy/ap;)V
    .locals 4

    new-instance v0, Lcom/tapjoy/h;

    invoke-static {}, Lcom/tapjoy/aw;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/aw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/av;->g:Lcom/tapjoy/h;

    sget-boolean v0, Lcom/tapjoy/h;->e:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/ap;)V

    iget-object v0, p0, Lcom/tapjoy/av;->g:Lcom/tapjoy/h;

    invoke-static {}, Lcom/tapjoy/aw;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/aw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/aw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/16 v0, 0x5599

    iput v0, p0, Lcom/tapjoy/av;->f:I

    invoke-static {}, Lcom/tapjoy/aw;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tapjoyPrimaryColor"

    iget v2, p0, Lcom/tapjoy/av;->f:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
