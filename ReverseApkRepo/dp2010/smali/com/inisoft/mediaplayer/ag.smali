.class final Lcom/inisoft/mediaplayer/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;

.field private final synthetic b:Lcom/inisoft/mediaplayer/cj;

.field private final synthetic c:Lcom/inisoft/mediaplayer/e;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;Lcom/inisoft/mediaplayer/cj;Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ag;->a:Lcom/inisoft/mediaplayer/v;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/ag;->b:Lcom/inisoft/mediaplayer/cj;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/ag;->c:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ag;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ag;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->s(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ag;->b:Lcom/inisoft/mediaplayer/cj;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/inisoft/mediaplayer/cj;->b(JZ)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ag;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v2, v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(Lcom/inisoft/mediaplayer/CommonListActivity;J)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ag;->c:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->f()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
