.class public Ledu/umich/PowerTutor/ui/AppChoiceView;
.super Landroid/app/ListActivity;
.source "AppChoiceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;,
        Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;,
        Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;
    }
.end annotation


# instance fields
.field private RunProcess:Landroid/widget/TextView;

.field private SeletedPackageName:Ljava/lang/String;

.field private SeletedUid:I

.field activityManager:Landroid/app/ActivityManager;

.field appList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->RunProcess:Landroid/widget/TextView;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->items:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/AppChoiceView;->resizeImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/ui/AppChoiceView;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedUid:I

    return v0
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/ui/AppChoiceView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private resizeImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "Icon"

    .prologue
    const/16 v7, 0x3c

    const/16 v6, 0x16

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 371
    invoke-static {}, Ledu/umich/PowerTutor/util/CompareFunc;->getScreenSize()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 373
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    .local v1, BitmapOrg:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    .local v0, BitmapCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4, v4, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 376
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 393
    :goto_0
    return-object v2

    .line 379
    .end local v0           #BitmapCanvas:Landroid/graphics/Canvas;
    .end local v1           #BitmapOrg:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Ledu/umich/PowerTutor/util/CompareFunc;->getScreenSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 381
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 382
    .restart local v1       #BitmapOrg:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 383
    .restart local v0       #BitmapCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 389
    .end local v0           #BitmapCanvas:Landroid/graphics/Canvas;
    .end local v1           #BitmapOrg:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    .restart local v1       #BitmapOrg:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    .restart local v0       #BitmapCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->setContentView(I)V

    .line 66
    const v2, 0x7f080010

    invoke-virtual {p0, v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->RunProcess:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/AppChoiceView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/AppChoiceView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 82
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 81
    iput-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->activityManager:Landroid/app/ActivityManager;

    .line 83
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->appList2:Ljava/util/List;

    .line 85
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->appList2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->appList2:Ljava/util/List;

    invoke-direct {v2, p0, p0, v3}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;-><init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    return-void

    .line 89
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 90
    .local v0, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->items:Ljava/util/ArrayList;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 161
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->appList2:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedUid:I

    .line 162
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->appList2:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView;->SeletedPackageName:Ljava/lang/String;

    .line 163
    const-string v0, "You want this information?"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/ui/AppChoiceView;->showMessageDialog(Ljava/lang/CharSequence;Z)V

    .line 165
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 113
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 355
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 361
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public showMessageDialog(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "message"
    .parameter "success"

    .prologue
    .line 170
    new-instance v0, Ledu/umich/PowerTutor/ui/AppChoiceView$1;

    invoke-direct {v0, p0, p1, p2}, Ledu/umich/PowerTutor/ui/AppChoiceView$1;-><init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/AppChoiceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method
