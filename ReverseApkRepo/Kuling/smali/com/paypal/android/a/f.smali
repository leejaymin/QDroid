.class final Lcom/paypal/android/a/f;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/a/a;


# direct methods
.method constructor <init>(Lcom/paypal/android/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    const-string v6, "CHANGE_STRING"

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v0}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/b/a$b;

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->b(Lcom/paypal/android/a/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    :try_start_1
    iget-object v3, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "usernameOrPhone"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v2}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v2

    const-string v4, "passwordOrPin"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Login"

    const-string v3, "Error during call to log in."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v0, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->c(Lcom/paypal/android/a/a;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v2}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->d(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->e(Lcom/paypal/android/a/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v2}, Lcom/paypal/android/a/a;->f(Lcom/paypal/android/a/a;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x9

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v0, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->g(Lcom/paypal/android/a/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v2}, Lcom/paypal/android/a/a;->f(Lcom/paypal/android/a/a;)V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    :goto_3
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_7
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->h(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v1}, Lcom/paypal/android/a/a;->i(Lcom/paypal/android/a/a;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v2}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/b/a$b;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-virtual {v1}, Lcom/paypal/android/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v0, v5}, Lcom/paypal/android/a/a;->a(Lcom/paypal/android/a/a;I)I

    iget-object v0, p0, Lcom/paypal/android/a/f;->a:Lcom/paypal/android/a/a;

    invoke-static {v0}, Lcom/paypal/android/a/a;->j(Lcom/paypal/android/a/a;)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method
