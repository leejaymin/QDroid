.class final Lcom/inisoft/mediaplayer/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/w;->a:Lcom/inisoft/mediaplayer/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/w;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/inisoft/mediaplayer/bw;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/w;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->d:Lcom/inisoft/mediaplayer/bw;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/inisoft/mediaplayer/bw;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
