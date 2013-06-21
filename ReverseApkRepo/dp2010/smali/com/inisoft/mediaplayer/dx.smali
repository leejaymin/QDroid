.class final Lcom/inisoft/mediaplayer/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPathActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dx;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

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
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dx;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->f(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dx;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bs;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dx;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bs;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dx;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;Lcom/inisoft/mediaplayer/bs;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
