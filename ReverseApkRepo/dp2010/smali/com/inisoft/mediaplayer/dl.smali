.class final Lcom/inisoft/mediaplayer/dl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/di;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/di;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dl;->a:Lcom/inisoft/mediaplayer/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dl;->a:Lcom/inisoft/mediaplayer/di;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/di;->a(Lcom/inisoft/mediaplayer/di;)Lcom/inisoft/mediaplayer/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->m()V

    return-void
.end method
