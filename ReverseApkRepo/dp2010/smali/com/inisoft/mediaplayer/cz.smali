.class final Lcom/inisoft/mediaplayer/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cz;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cz;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->j()V

    return-void
.end method
