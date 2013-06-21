.class public Lki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Lki;)V
    .locals 0

    invoke-direct {p0, p1}, Lki;-><init>(Lcom/mxtech/videoplayer/ActivityScreen;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, v2, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v2}, Lnb;->寃껋씠()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->롩퐢(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    iget-object v1, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v1}, Lnb;->앸ぐ()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v3, p0, Lki;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v4, Lnt;->sticky_mode_not_allowed_with_hw_decoder:I

    invoke-virtual {v3, v4}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
