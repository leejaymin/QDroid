.class final Lcom/inisoft/mediaplayer/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;

.field private final synthetic b:Lcom/inisoft/mediaplayer/e;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ad;->a:Lcom/inisoft/mediaplayer/v;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/ad;->b:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ad;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->p(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/bw;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->a:Lcom/inisoft/mediaplayer/bw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ad;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    sget-object v1, Lcom/inisoft/mediaplayer/bw;->b:Lcom/inisoft/mediaplayer/bw;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/inisoft/mediaplayer/bw;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ad;->b:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->f()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
