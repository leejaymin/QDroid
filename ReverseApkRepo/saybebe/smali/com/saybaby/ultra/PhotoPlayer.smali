.class public Lcom/saybaby/ultra/PhotoPlayer;
.super Landroid/app/Activity;
.source "PhotoPlayer.java"

# interfaces
.implements Lkr/co/medinbiz/widget/ultra/util/PhotoViewFinishListner;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private mNum:Ljava/lang/String;

.field private mPage:Ljava/lang/String;

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:Ljava/lang/String;

.field private mTotal:Ljava/lang/String;

.field private mTotalPage:Ljava/lang/String;

.field private photoMain:Landroid/widget/LinearLayout;

.field private viewFlipper:Landroid/widget/ViewFlipper;

.field private widget:Lkr/co/medinbiz/widget/ultra/PhotoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/saybaby/ultra/PhotoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, i:Landroid/content/Intent;
    const-string v1, "array"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/saybaby/ultra/PhotoPlayer;->mPhotos:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/saybaby/ultra/PhotoPlayer;->mPosition:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/saybaby/ultra/PhotoPlayer;->mPage:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/saybaby/ultra/PhotoPlayer;->mTotal:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "totalpage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/saybaby/ultra/PhotoPlayer;->mTotalPage:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "num"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/saybaby/ultra/PhotoPlayer;->mNum:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public PhotoViewFinish(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "aPosition"
    .parameter "aPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, aPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    const/4 v2, 0x0

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, data:Landroid/content/Intent;
    const-string v1, "array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    const-string v1, "lastposition"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "lastpage"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/saybaby/ultra/PhotoPlayer;->setResult(ILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/saybaby/ultra/PhotoPlayer;->finish()V

    .line 77
    invoke-virtual {p0, v2, v2}, Lcom/saybaby/ultra/PhotoPlayer;->overridePendingTransition(II)V

    .line 80
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/saybaby/ultra/PhotoPlayer;->widget:Lkr/co/medinbiz/widget/ultra/PhotoView;

    invoke-virtual {v0, p1, p2, p3}, Lkr/co/medinbiz/widget/ultra/PhotoView;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/saybaby/ultra/PhotoPlayer;->widget:Lkr/co/medinbiz/widget/ultra/PhotoView;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->onBackPressed()V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/saybaby/ultra/PhotoPlayer;->setContentView(I)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/saybaby/ultra/PhotoPlayer;->handleIntent()V

    .line 53
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/saybaby/ultra/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saybaby/ultra/PhotoPlayer;->photoMain:Landroid/widget/LinearLayout;

    .line 54
    new-instance v0, Lkr/co/medinbiz/widget/ultra/PhotoView;

    iget-object v2, p0, Lcom/saybaby/ultra/PhotoPlayer;->mPhotos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/saybaby/ultra/PhotoPlayer;->mPosition:Ljava/lang/String;

    iget-object v4, p0, Lcom/saybaby/ultra/PhotoPlayer;->mPage:Ljava/lang/String;

    iget-object v5, p0, Lcom/saybaby/ultra/PhotoPlayer;->mTotal:Ljava/lang/String;

    .line 55
    iget-object v6, p0, Lcom/saybaby/ultra/PhotoPlayer;->mTotalPage:Ljava/lang/String;

    iget-object v7, p0, Lcom/saybaby/ultra/PhotoPlayer;->mNum:Ljava/lang/String;

    iget-object v8, p0, Lcom/saybaby/ultra/PhotoPlayer;->photoMain:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lkr/co/medinbiz/widget/ultra/PhotoView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    .line 54
    iput-object v0, p0, Lcom/saybaby/ultra/PhotoPlayer;->widget:Lkr/co/medinbiz/widget/ultra/PhotoView;

    .line 57
    return-void
.end method
