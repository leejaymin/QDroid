.class final Limoblife/startupmanager/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ax;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Limoblife/startupmanager/ax;I)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    iput p2, p0, Limoblife/startupmanager/az;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Limoblife/startupmanager/az;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Limoblife/startupmanager/ZCustomizeActivity;->deleteCustomizeList(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v1}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v1

    invoke-static {v1}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$0(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Limoblife/startupmanager/az;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    invoke-virtual {v1, v0}, Limoblife/startupmanager/ZCustomizeActivity;->getAppInfo(Limoblife/startupmanager/au;)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v0

    iget-object v1, v0, Limoblife/startupmanager/ZCustomizeActivity;->pm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Limoblife/startupmanager/az;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v1}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v1

    invoke-static {v1}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Limoblife/startupmanager/ZCustomizeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "http://market.android.com/search?q=pname:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Limoblife/startupmanager/az;->a:Limoblife/startupmanager/ax;

    invoke-static {v0}, Limoblife/startupmanager/ax;->a(Limoblife/startupmanager/ax;)Limoblife/startupmanager/av;

    move-result-object v0

    invoke-static {v0}, Limoblife/startupmanager/av;->a(Limoblife/startupmanager/av;)Ljava/util/List;

    move-result-object v0

    iget v5, p0, Limoblife/startupmanager/az;->b:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Limoblife/startupmanager/ZCustomizeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
