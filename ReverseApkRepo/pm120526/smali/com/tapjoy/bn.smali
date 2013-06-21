.class public final Lcom/tapjoy/bn;
.super Ljava/lang/Object;


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static f:Lcom/tapjoy/bn;

.field private static g:Lcom/tapjoy/bo;


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/tapjoy/bp;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/util/Hashtable;

.field private l:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/bn;->f:Lcom/tapjoy/bn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/bn;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/bn;->i:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/bn;->j:I

    iput-object p1, p0, Lcom/tapjoy/bn;->a:Landroid/content/Context;

    sput-object p0, Lcom/tapjoy/bn;->f:Lcom/tapjoy/bn;

    return-void
.end method

.method public static a()Lcom/tapjoy/bn;
    .locals 1

    sget-object v0, Lcom/tapjoy/bn;->f:Lcom/tapjoy/bn;

    return-object v0
.end method

.method public static c()Lcom/tapjoy/bo;
    .locals 1

    sget-object v0, Lcom/tapjoy/bn;->g:Lcom/tapjoy/bo;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting video activity with video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/bn;->l:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/bp;

    iput-object v0, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TapjoyVideo"

    const-string v1, "Cannot access external storage"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/bn;->g:Lcom/tapjoy/bo;

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    if-nez v0, :cond_3

    const-string v0, "TapjoyVideo"

    const-string v1, "video not cached... checking uncached videos"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/bn;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/bp;

    iput-object v0, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v0, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    if-nez v0, :cond_1

    const-string v0, "TapjoyVideo"

    const-string v1, "null video object? aborting."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iput-object p2, v1, Lcom/tapjoy/bp;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iput-object p3, v1, Lcom/tapjoy/bp;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iput-object p4, v1, Lcom/tapjoy/bp;->b:Ljava/lang/String;

    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoToPlay: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v3, v3, Lcom/tapjoy/bp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v3, v3, Lcom/tapjoy/bp;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v3, v3, Lcom/tapjoy/bp;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clickURL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v3, v3, Lcom/tapjoy/bp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v3, v3, Lcom/tapjoy/bp;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v0, v0, Lcom/tapjoy/bp;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    iget-object v1, v1, Lcom/tapjoy/bp;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TapjoyVideo"

    const-string v1, "video file does not exist."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/bn;->a:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "VIDEO_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/bn;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    goto/16 :goto_0

    :cond_3
    move v0, v5

    goto/16 :goto_1
.end method

.method public final b()Lcom/tapjoy/bp;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/bn;->b:Lcom/tapjoy/bp;

    return-object v0
.end method
