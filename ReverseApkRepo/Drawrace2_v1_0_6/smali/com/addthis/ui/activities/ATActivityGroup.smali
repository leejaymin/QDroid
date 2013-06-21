.class public Lcom/addthis/ui/activities/ATActivityGroup;
.super Landroid/app/ActivityGroup;
.source "ATActivityGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Activity Group"


# instance fields
.field private mCurrentView:I

.field private mItem:Lcom/addthis/models/ATShareItem;

.field private mOnEditingMode:Z

.field private mService:Lcom/addthis/models/ATService;

.field private mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 42
    iput v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;

    .line 46
    iput-boolean v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mOnEditingMode:Z

    .line 39
    return-void
.end method

.method private loadViews()V
    .locals 10

    .prologue
    .line 89
    const-string v7, "Activity Group"

    const-string v8, "LoadViews"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, data:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->showNextView()V

    .line 117
    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    .line 99
    check-cast v4, Landroid/os/Bundle;

    .line 100
    .local v4, values:Landroid/os/Bundle;
    const-string v7, "ViewCount"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 101
    .local v5, viewCount:I
    const-string v7, "EditingMode"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/addthis/ui/activities/ATActivityGroup;->setOnEditingMode(Z)V

    .line 102
    const-string v7, "ServiceCode"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, serviceCode:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 105
    :try_start_0
    new-instance v7, Lcom/addthis/data/ATDataFetcher;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    invoke-virtual {v7, v3}, Lcom/addthis/data/ATDataFetcher;->getService(Ljava/lang/String;)Lcom/addthis/models/ATService;

    move-result-object v7

    iput-object v7, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;
    :try_end_0
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    const-string v7, "ViewIDs"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 111
    .local v6, viewIDs:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 113
    aget v7, v6, v2

    invoke-virtual {p0, v7}, Lcom/addthis/ui/activities/ATActivityGroup;->showView(I)V

    .line 114
    const-string v7, "Activity Group"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2           #i:I
    .end local v6           #viewIDs:[I
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Lcom/addthis/error/ATDatabaseException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/addthis/error/ATDatabaseException;->getError()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private replaceView(Landroid/view/View;)V
    .locals 1
    .parameter "newView"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0, p1}, Lcom/addthis/ui/activities/ATActivityGroup;->setContentView(Landroid/view/View;)V

    .line 185
    return-void
.end method


# virtual methods
.method public back()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 197
    const-string v1, "Activity Group"

    const-string v2, "Popping view"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 200
    .local v0, obj:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/addthis/ui/activities/ATActivityGroup;->setContentView(Landroid/view/View;)V

    .line 201
    iget v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    .line 206
    .end local v0           #obj:Landroid/view/View;
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->exit()V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->finish()V

    .line 218
    return-void
.end method

.method public getCurrentViewIndex()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    return v0
.end method

.method public getItem()Lcom/addthis/models/ATShareItem;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mItem:Lcom/addthis/models/ATShareItem;

    return-object v0
.end method

.method public getService()Lcom/addthis/models/ATService;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "Activity Group"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->back()V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v4, "Activity Group"

    const-string v5, "On create called ************"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 54
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 57
    new-instance v4, Lcom/addthis/models/ATShareItem;

    invoke-direct {v4}, Lcom/addthis/models/ATShareItem;-><init>()V

    iput-object v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mItem:Lcom/addthis/models/ATShareItem;

    .line 58
    iget-object v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mItem:Lcom/addthis/models/ATShareItem;

    const-string v5, "shareurl"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/addthis/models/ATShareItem;->setUrl(Ljava/lang/String;)V

    .line 59
    iget-object v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mItem:Lcom/addthis/models/ATShareItem;

    const-string v5, "sharetitle"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/addthis/models/ATShareItem;->setTitle(Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mItem:Lcom/addthis/models/ATShareItem;

    const-string v5, "sharedesc"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/addthis/models/ATShareItem;->setDescription(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "shareimage"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Lcom/addthis/models/ATShareItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 62
    const-string v4, "view"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    .line 64
    const-string v4, "code"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, serviceCode:Ljava/lang/String;
    const-string v4, "Activity Group"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Service = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v3, :cond_0

    .line 67
    const-string v4, "Activity Group"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Service = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/addthis/data/ATDataFetcher;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 70
    .local v0, dbFetcher:Lcom/addthis/data/ATDataFetcher;
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/addthis/data/ATDataFetcher;->getService(Ljava/lang/String;)Lcom/addthis/models/ATService;

    move-result-object v4

    iput-object v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;
    :try_end_0
    .catch Lcom/addthis/error/ATDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #dbFetcher:Lcom/addthis/data/ATDataFetcher;
    .end local v3           #serviceCode:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    .line 77
    invoke-direct {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->loadViews()V

    .line 78
    return-void

    .line 71
    .restart local v0       #dbFetcher:Lcom/addthis/data/ATDataFetcher;
    .restart local v3       #serviceCode:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Lcom/addthis/error/ATDatabaseException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/addthis/error/ATDatabaseException;->getError()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 228
    const-string v0, "Activity Group"

    const-string v1, "Menu clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public onEditingMode()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mOnEditingMode:Z

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 121
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v3, values:Landroid/os/Bundle;
    const-string v5, "ViewCount"

    iget-object v6, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v5, "EditingMode"

    iget-boolean v6, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mOnEditingMode:Z

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    iget-object v5, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 125
    .local v4, viewIDs:[I
    const/4 v0, 0x0

    .line 126
    .local v0, i:I
    iget-object v5, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    const-string v5, "ViewIDs"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 131
    iget-object v5, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;

    if-eqz v5, :cond_0

    .line 132
    const-string v5, "ServiceCode"

    iget-object v6, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;

    invoke-virtual {v6}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-object v3

    .line 126
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 127
    .local v2, v:Landroid/view/View;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    aput v6, v4, v0

    .line 128
    const-string v6, "Activity Group"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ID "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0
.end method

.method public setOnEditingMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mOnEditingMode:Z

    .line 239
    return-void
.end method

.method public setService(Lcom/addthis/models/ATService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mService:Lcom/addthis/models/ATService;

    .line 251
    return-void
.end method

.method public showNextView()V
    .locals 5

    .prologue
    .line 161
    iget v2, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    invoke-static {p0, v2}, Lcom/addthis/core/ATController;->intentForView(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 162
    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, v:Landroid/view/View;
    const-string v2, "color"

    const-string v3, "background_color"

    invoke-static {p0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 165
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    iget v2, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 168
    invoke-direct {p0, v1}, Lcom/addthis/ui/activities/ATActivityGroup;->replaceView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public showView(I)V
    .locals 0
    .parameter "viewId"

    .prologue
    .line 148
    iput p1, p0, Lcom/addthis/ui/activities/ATActivityGroup;->mCurrentView:I

    .line 149
    invoke-virtual {p0}, Lcom/addthis/ui/activities/ATActivityGroup;->showNextView()V

    .line 150
    return-void
.end method
