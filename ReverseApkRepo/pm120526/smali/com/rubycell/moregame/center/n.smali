.class public final Lcom/rubycell/moregame/center/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Z


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Ljava/util/Random;

.field private f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://colormefree.us/gamedownloadabledata/moregame/more_game_one.xml"

    sput-object v0, Lcom/rubycell/moregame/center/n;->a:Ljava/lang/String;

    const-string v0, "http://colormefree.us/gamedownloadabledata/moregame/more_game_list.xml"

    sput-object v0, Lcom/rubycell/moregame/center/n;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/moregame/center/n;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/center/n;->e:Ljava/util/Random;

    return-void
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/moregame/center/n;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const v3, 0xf4240

    iget-object v0, p0, Lcom/rubycell/moregame/center/n;->e:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 5

    const v4, 0xf4240

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/rubycell/moregame/center/n;->e:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/moregame/center/MoreGameListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_app_in_amazon"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/moregame/center/MoreGameOneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_app_in_amazon"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rubycell/moregame/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/rubycell/moregame/center/n;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rubycell/moregame/center/n;->c:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/moregame/service/MoregameService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/rubycell/moregame/center/n;->f:Landroid/content/Intent;

    iget-object v0, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/moregame/center/n;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/center/n;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/rubycell/moregame/center/n;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    :cond_0
    invoke-static {}, Lcom/rubycell/moregame/center/MoreGameView;->b()V

    invoke-static {}, Lcom/rubycell/moregame/center/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
