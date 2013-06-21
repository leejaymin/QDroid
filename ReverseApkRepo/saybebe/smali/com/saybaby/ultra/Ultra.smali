.class public Lcom/saybaby/ultra/Ultra;
.super Lkr/co/medinbiz/CommonActivity;
.source "Ultra.java"

# interfaces
.implements Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;


# instance fields
.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private widget:Lkr/co/medinbiz/widget/ultra/UltraMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public goToPhotoPlay(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "aPosition"
    .parameter "aPage"
    .parameter "aTotal"
    .parameter "aTotalPage"
    .parameter "aNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .line 62
    .local p1, aPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/saybaby/ultra/PhotoPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v1, "array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    const-string v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    const-string v1, "page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "total"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    const-string v1, "totalpage"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string v1, "num"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/saybaby/ultra/Ultra;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method public goToVideoPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "aUrl"
    .parameter "aDate"
    .parameter "aTitle"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/saybaby/ultra/Ultra;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/saybaby/ultra/Ultra;->startActivity(Landroid/content/Intent;)V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/saybaby/ultra/VidioPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/saybaby/ultra/Ultra;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 75
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 77
    const-string v1, "array"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 76
    check-cast v0, Ljava/util/ArrayList;

    .line 78
    .local v0, lUl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    iget-object v1, p0, Lcom/saybaby/ultra/Ultra;->widget:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v1, v1, Lkr/co/medinbiz/widget/ultra/UltraMain;->mPhotoListView:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    .line 79
    const-string v2, "lastposition"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "lastpage"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v1, v0, v2, v3}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->ChangVideoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v0           #lUl:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/saybaby/ultra/Ultra;->widget:Lkr/co/medinbiz/widget/ultra/UltraMain;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->onBackPressed()V

    .line 42
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v1, p0, Lcom/saybaby/ultra/Ultra;->mainview:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/saybaby/ultra/Ultra;->widget:Lkr/co/medinbiz/widget/ultra/UltraMain;

    .line 34
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/saybaby/ultra/Ultra;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 26
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 27
    return-void
.end method
