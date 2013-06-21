.class final Lcom/thinkyeah/smartlock/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/e;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AboutActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/AboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/a;->a:Lcom/thinkyeah/smartlock/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thinkyeahmail@gmail.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/a;->a:Lcom/thinkyeah/smartlock/AboutActivity;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/a;->a:Lcom/thinkyeah/smartlock/AboutActivity;

    const v3, 0x7f0900c3

    invoke-virtual {v2, v3}, Lcom/thinkyeah/smartlock/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thinkyeah/smartlock/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "www.thinkyeah.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/a;->a:Lcom/thinkyeah/smartlock/AboutActivity;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
