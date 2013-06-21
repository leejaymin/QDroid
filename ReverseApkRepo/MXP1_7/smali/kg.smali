.class public Lkg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private final 궗:I

.field private 먯꽌:I


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;I)V
    .locals 1

    iput-object p1, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit16 v0, p2, 0x3e8

    iput v0, p0, Lkg;->궗:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lkg;->먯꽌:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkg;->먯꽌:I

    iget-object v1, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "navi_move_interval"

    const/16 v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lkg;->궗:I

    mul-int/2addr v2, v0

    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->洹(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->궗(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    iput v3, p0, Lkg;->먯꽌:I

    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, v3}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->몃Ъ()V

    iget v0, p0, Lkg;->먯꽌:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, p0, Lkg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityScreen;->몃Ъ(Lcom/mxtech/videoplayer/ActivityScreen;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {}, Lnb;->湲고빐()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->궗(II)V

    goto :goto_0
.end method
