.class final Lcom/inisoft/mediaplayer/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/aa;->a:Lcom/inisoft/mediaplayer/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/inisoft/mediaplayer/CommonListActivity;->f()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/aa;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;ILjava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method