.class final Lcom/thinkyeah/smartlock/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/i;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ag;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ag;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->a(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockSetting"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    const-string v5, "LockSetting"

    invoke-static {v4, v5, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockPatternEnabled"

    invoke-static {v0, v4, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->l()V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->k()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ag;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->a(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockAndroidMarket"

    invoke-static {v3, v4, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    const-string v5, "LockAndroidMarket"

    invoke-static {v4, v5, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockPatternEnabled"

    invoke-static {v0, v4, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->n()V

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->m()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ag;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->a(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockInstallApp"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    const-string v5, "LockInstallApp"

    invoke-static {v4, v5, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockPatternEnabled"

    invoke-static {v0, v4, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_6

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->h()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->g()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/thinkyeah/smartlock/ag;->a:Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->a(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v2

    iget-object v3, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockUninstallApp"

    invoke-static {v3, v4, v0}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    const-string v5, "LockUninstallApp"

    invoke-static {v4, v5, v0}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockPatternEnabled"

    invoke-static {v0, v4, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_8

    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->j()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, v2, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0}, Lcom/thinkyeah/smartlock/service/a;->i()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
