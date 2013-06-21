.class final Lcom/inisoft/mediaplayer/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/af;->a:Lcom/inisoft/mediaplayer/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/af;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->t(Lcom/inisoft/mediaplayer/CommonListActivity;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/af;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->s(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/af;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/CommonListActivity;->s(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/af;->a:Lcom/inisoft/mediaplayer/v;

    iget-object v3, v3, Lcom/inisoft/mediaplayer/v;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
