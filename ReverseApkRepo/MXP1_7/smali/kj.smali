.class public Lkj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lkj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Lkj;)V
    .locals 0

    invoke-direct {p0, p1}, Lkj;-><init>(Lcom/mxtech/videoplayer/ActivityScreen;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lkj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->꾨뱾()V

    :cond_0
    return-void
.end method
