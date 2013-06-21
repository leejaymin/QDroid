.class public Lju;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lju;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lju;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->앸ぐ(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v1, p0, Lju;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, p0, Lju;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->듦낵(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    iget-object v0, p0, Lju;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->덉쓬(Lcom/mxtech/videoplayer/ActivityScreen;)V

    iget-object v0, p0, Lju;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->꾩(Lcom/mxtech/videoplayer/ActivityScreen;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
