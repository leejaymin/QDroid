.class final Lcom/inisoft/mediaplayer/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/dm;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/dm;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/do;->a:Lcom/inisoft/mediaplayer/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/do;->a:Lcom/inisoft/mediaplayer/dm;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/dm;->a(Lcom/inisoft/mediaplayer/dm;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v0

    const/4 v1, -0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/do;->a:Lcom/inisoft/mediaplayer/dm;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/dm;->a(Lcom/inisoft/mediaplayer/dm;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/do;->a:Lcom/inisoft/mediaplayer/dm;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/dm;->a(Lcom/inisoft/mediaplayer/dm;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->Z()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->s(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/do;->a:Lcom/inisoft/mediaplayer/dm;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/dm;->b(Lcom/inisoft/mediaplayer/dm;)V

    :cond_0
    return-void
.end method
