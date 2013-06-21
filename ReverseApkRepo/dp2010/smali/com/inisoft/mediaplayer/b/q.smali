.class final Lcom/inisoft/mediaplayer/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/p;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/q;->a:Lcom/inisoft/mediaplayer/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/q;->a:Lcom/inisoft/mediaplayer/b/p;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/p;->a(Lcom/inisoft/mediaplayer/b/p;)Lcom/inisoft/mediaplayer/b/n;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->e(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/a;

    move-result-object v0

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/q;->a:Lcom/inisoft/mediaplayer/b/p;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/p;->a(Lcom/inisoft/mediaplayer/b/p;)Lcom/inisoft/mediaplayer/b/n;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/q;->a:Lcom/inisoft/mediaplayer/b/p;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/p;->a(Lcom/inisoft/mediaplayer/b/p;)Lcom/inisoft/mediaplayer/b/n;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->g(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/views/ColorPanelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/q;->a:Lcom/inisoft/mediaplayer/b/p;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/p;->a(Lcom/inisoft/mediaplayer/b/p;)Lcom/inisoft/mediaplayer/b/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;Lafzkl/development/mColorPicker/a;)V

    return-void
.end method
