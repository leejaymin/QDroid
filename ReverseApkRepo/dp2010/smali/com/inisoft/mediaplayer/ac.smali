.class final Lcom/inisoft/mediaplayer/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ac;->a:Lcom/inisoft/mediaplayer/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ac;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {p2}, Lcom/inisoft/mediaplayer/bw;->a(I)Lcom/inisoft/mediaplayer/bw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;Lcom/inisoft/mediaplayer/bw;)V

    return-void
.end method
