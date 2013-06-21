.class public Lcom/sphericbox/syb/camera/CaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private I:Lcom/sphericbox/syb/camera/j;

.field private J:Lcom/sphericbox/syb/camera/a;

.field private K:Lcom/sphericbox/syb/camera/h;

.field private L:Lcom/sphericbox/syb/camera/i;

.field private M:Landroid/view/SurfaceView;

.field private N:Landroid/widget/ImageView;

.field private O:Z

.field private P:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    return-object v0
.end method

.method static synthetic a(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/sphericbox/syb/camera/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sphericbox/syb/camera/CaptureActivity;->n()V

    return-void
.end method

.method static synthetic b(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->P:Z

    return p1
.end method

.method static synthetic c(Lcom/sphericbox/syb/camera/CaptureActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->N:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/sphericbox/syb/camera/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sphericbox/syb/camera/CaptureActivity;->o()V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->O:Z

    .line 144
    iget-boolean v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->P:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/sphericbox/syb/camera/CaptureActivity;->o()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    iget-object v1, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->L:Lcom/sphericbox/syb/camera/i;

    invoke-interface {v0, v1}, Lcom/sphericbox/syb/camera/j;->a(Lcom/sphericbox/syb/camera/e;)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    iget-object v1, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->J:Lcom/sphericbox/syb/camera/a;

    invoke-interface {v0, v1}, Lcom/sphericbox/syb/camera/j;->b(Lcom/sphericbox/syb/camera/e;)V

    .line 154
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v8, "CaptureActivity"

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->M:Landroid/view/SurfaceView;

    .line 47
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->N:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Lcom/sphericbox/syb/camera/b;

    invoke-direct {v0}, Lcom/sphericbox/syb/camera/b;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    .line 51
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    invoke-interface {v0}, Lcom/sphericbox/syb/camera/j;->q()Z

    .line 52
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    invoke-interface {v0, p0}, Lcom/sphericbox/syb/camera/j;->a(Landroid/app/Activity;)V

    .line 54
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    invoke-interface {v0}, Lcom/sphericbox/syb/camera/j;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 58
    const-string v2, "CaptureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportedPictureSizes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz v0, :cond_6

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 62
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0x384

    if-gt v4, v5, :cond_2

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0x4b0

    if-gt v4, v5, :cond_2

    .line 63
    if-nez v3, :cond_1

    :cond_0
    :goto_1
    move-object v3, v0

    .line 66
    goto :goto_0

    .line 65
    :cond_1
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 71
    :goto_2
    if-eqz v0, :cond_4

    .line 72
    const-string v2, "CaptureActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size chosen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    invoke-interface {v0, v1}, Lcom/sphericbox/syb/camera/j;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->M:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    invoke-interface {v1}, Lcom/sphericbox/syb/camera/j;->r()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 80
    new-instance v1, Lcom/sphericbox/syb/camera/f;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/camera/f;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 105
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 106
    new-instance v1, Lcom/sphericbox/syb/camera/g;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/camera/g;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/sphericbox/syb/camera/a;

    invoke-direct {v0, p0, v7}, Lcom/sphericbox/syb/camera/a;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;Lcom/sphericbox/syb/camera/f;)V

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->J:Lcom/sphericbox/syb/camera/a;

    .line 114
    new-instance v0, Lcom/sphericbox/syb/camera/h;

    invoke-direct {v0, p0, v7}, Lcom/sphericbox/syb/camera/h;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;Lcom/sphericbox/syb/camera/f;)V

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->K:Lcom/sphericbox/syb/camera/h;

    .line 115
    new-instance v0, Lcom/sphericbox/syb/camera/i;

    invoke-direct {v0, p0, v7}, Lcom/sphericbox/syb/camera/i;-><init>(Lcom/sphericbox/syb/camera/CaptureActivity;Lcom/sphericbox/syb/camera/f;)V

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->L:Lcom/sphericbox/syb/camera/i;

    .line 116
    return-void

    :cond_6
    move-object v0, v7

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p0}, Lcom/sphericbox/syb/camera/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 170
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    invoke-interface {v0}, Lcom/sphericbox/syb/camera/j;->close()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-boolean v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->O:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 129
    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->I:Lcom/sphericbox/syb/camera/j;

    iget-object v1, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->K:Lcom/sphericbox/syb/camera/h;

    invoke-interface {v0, v1}, Lcom/sphericbox/syb/camera/j;->a(Lcom/sphericbox/syb/camera/e;)V

    move v0, v2

    .line 138
    :goto_0
    return v0

    .line 132
    :cond_0
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lcom/sphericbox/syb/ui/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/sphericbox/syb/camera/CaptureActivity;->n()V

    move v0, v2

    .line 134
    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 158
    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sphericbox/syb/camera/CaptureActivity;->N:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
