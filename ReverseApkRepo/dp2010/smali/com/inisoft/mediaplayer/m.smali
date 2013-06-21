.class final Lcom/inisoft/mediaplayer/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->a()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->d(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/a;

    move-result-object v1

    if-nez v1, :cond_1

    move v2, v0

    :goto_1
    const-string v1, "BUCKET_POSITION"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v2, :cond_4

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BUCKET_POSITION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->e(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->f(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/be;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/be;->c(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->d(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/a;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    move v2, v1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->g(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->h(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->i(Lcom/inisoft/mediaplayer/CommonListActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->j(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->k(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->b(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->c(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    new-instance v1, Lcom/android/vending/billing/l;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->m(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/billing/l;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/android/vending/billing/l;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/billing/l;->a()V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/billing/l;->c()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->o(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Thank you"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    :pswitch_7
    const-string v0, "UNKOWN_ERROR"

    :goto_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->o(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Purchase Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "CANNOT_CONNECT_ID"

    goto :goto_3

    :pswitch_9
    const-string v0, "BILLING_NOT_SUPPORTED_ID"

    goto :goto_3

    :pswitch_a
    const-string v0, "SERVICE_UNAVAILABLE"

    goto :goto_3

    :pswitch_b
    const-string v0, "BILLING_UNAVAILABLE"

    goto :goto_3

    :pswitch_c
    const-string v0, "ITEM_UNAVAILABLE"

    goto :goto_3

    :pswitch_d
    const-string v0, "PURCHASE_DEVELOPER_ERROR"

    goto :goto_3

    :pswitch_e
    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/m;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->l(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/android/vending/billing/l;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/l;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
