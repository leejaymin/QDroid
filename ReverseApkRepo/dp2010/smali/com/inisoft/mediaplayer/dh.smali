.class final Lcom/inisoft/mediaplayer/dh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/dg;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dh;->a:Lcom/inisoft/mediaplayer/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dh;->a:Lcom/inisoft/mediaplayer/dg;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/dg;->a(Lcom/inisoft/mediaplayer/dg;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dh;->a:Lcom/inisoft/mediaplayer/dg;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->a()V

    :cond_0
    return-void
.end method
