.class public Lelectrum2/drums/waveeditactivity;
.super Landroid/app/Activity;
.source "waveeditactivity.java"


# instance fields
.field endpointbutton:Landroid/widget/Button;

.field private endpointlistener:Landroid/view/View$OnClickListener;

.field previewbutton:Landroid/widget/Button;

.field private previewlistener:Landroid/view/View$OnClickListener;

.field startpointbutton:Landroid/widget/Button;

.field private startpointlistener:Landroid/view/View$OnClickListener;

.field temptrack:Landroid/media/AudioTrack;

.field waveviewer:Lelectrum2/drums/waveedit;

.field zoominbutton:Landroid/widget/Button;

.field private zoominlistener:Landroid/view/View$OnClickListener;

.field zoomoutbutton:Landroid/widget/Button;

.field private zoomoutlistener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Lelectrum2/drums/waveeditactivity$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/waveeditactivity$1;-><init>(Lelectrum2/drums/waveeditactivity;)V

    iput-object v0, p0, Lelectrum2/drums/waveeditactivity;->previewlistener:Landroid/view/View$OnClickListener;

    .line 179
    new-instance v0, Lelectrum2/drums/waveeditactivity$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/waveeditactivity$2;-><init>(Lelectrum2/drums/waveeditactivity;)V

    iput-object v0, p0, Lelectrum2/drums/waveeditactivity;->zoominlistener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lelectrum2/drums/waveeditactivity$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/waveeditactivity$3;-><init>(Lelectrum2/drums/waveeditactivity;)V

    iput-object v0, p0, Lelectrum2/drums/waveeditactivity;->zoomoutlistener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lelectrum2/drums/waveeditactivity$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/waveeditactivity$4;-><init>(Lelectrum2/drums/waveeditactivity;)V

    iput-object v0, p0, Lelectrum2/drums/waveeditactivity;->startpointlistener:Landroid/view/View$OnClickListener;

    .line 215
    new-instance v0, Lelectrum2/drums/waveeditactivity$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/waveeditactivity$5;-><init>(Lelectrum2/drums/waveeditactivity;)V

    iput-object v0, p0, Lelectrum2/drums/waveeditactivity;->endpointlistener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f03001a

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lelectrum2/drums/waveeditactivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 42
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 43
    .local v3, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 45
    .local v1, height:I
    invoke-virtual {p0}, Lelectrum2/drums/waveeditactivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 48
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    invoke-virtual {p0}, Lelectrum2/drums/waveeditactivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    const v4, 0x7f0700bf

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lelectrum2/drums/waveedit;

    iput-object v4, p0, Lelectrum2/drums/waveeditactivity;->waveviewer:Lelectrum2/drums/waveedit;

    .line 57
    const v4, 0x7f0700c0

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/waveeditactivity;->startpointbutton:Landroid/widget/Button;

    .line 58
    const v4, 0x7f0700c1

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/waveeditactivity;->endpointbutton:Landroid/widget/Button;

    .line 60
    const v4, 0x7f0700c3

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/waveeditactivity;->zoomoutbutton:Landroid/widget/Button;

    .line 61
    const v4, 0x7f0700c2

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/waveeditactivity;->zoominbutton:Landroid/widget/Button;

    .line 62
    const v4, 0x7f0700c4

    invoke-virtual {p0, v4}, Lelectrum2/drums/waveeditactivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/waveeditactivity;->previewbutton:Landroid/widget/Button;

    .line 65
    iget-object v4, p0, Lelectrum2/drums/waveeditactivity;->startpointbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/waveeditactivity;->startpointlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v4, p0, Lelectrum2/drums/waveeditactivity;->endpointbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/waveeditactivity;->endpointlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v4, p0, Lelectrum2/drums/waveeditactivity;->zoominbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/waveeditactivity;->zoominlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v4, p0, Lelectrum2/drums/waveeditactivity;->zoomoutbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/waveeditactivity;->zoomoutlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v4, p0, Lelectrum2/drums/waveeditactivity;->previewbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/waveeditactivity;->previewlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 87
    iget-object v0, p0, Lelectrum2/drums/waveeditactivity;->temptrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
