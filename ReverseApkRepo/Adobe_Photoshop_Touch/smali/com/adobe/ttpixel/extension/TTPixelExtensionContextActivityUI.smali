.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final kLOG_TAG:Ljava/lang/String; = "ActivityUI"


# instance fields
.field protected iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

.field protected iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

.field protected iList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/ttpixel/extension/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected iMember:I

.field protected iTimer:Ljava/util/Timer;

.field protected iViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method protected addGLSurfaceView(J)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->getActivitySurfaceView()Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0, v6}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iTimer:Ljava/util/Timer;

    new-instance v1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI$1;

    invoke-direct {v1, p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI$1;-><init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;)V

    const-wide/16 v4, 0x96

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    iget-object v0, v0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->iActivityRenderer:Lcom/adobe/ttpixel/extension/ActivityRenderer;

    invoke-virtual {v0, v6}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->setFirstDelay(Z)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->requestRender()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method protected findActivityById(I)Lcom/adobe/ttpixel/extension/ActivityInfo;
    .locals 4

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget v3, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mActivityId:I

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getActivitySurfaceView()Lcom/adobe/ttpixel/extension/ActivitySurfaceView;
    .locals 3

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    :cond_0
    new-instance v0, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    :cond_1
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "showActivityUI"

    new-instance v2, Lcom/adobe/ttpixel/extension/activityui/FnActivityUIShow;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/activityui/FnActivityUIShow;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hideActivityUI"

    new-instance v2, Lcom/adobe/ttpixel/extension/activityui/FnActivityUIHide;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/activityui/FnActivityUIHide;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hideActivityView(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->zombieActivityById(I)Lcom/adobe/ttpixel/extension/ActivityInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/ActivityInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mZombie:Z

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->getActivityRenderer()Lcom/adobe/ttpixel/extension/ActivityRenderer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->setUpCallback(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;Lcom/adobe/ttpixel/extension/ActivityInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->removeGLSurfaceView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    goto :goto_0
.end method

.method protected removeGLSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->getActivityRenderer()Lcom/adobe/ttpixel/extension/ActivityRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->fireCallback()V

    :cond_2
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeOldZombies(I)V
    .locals 3

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-boolean v2, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mZombie:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mActivityId:I

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public runStackedCallback()V
    .locals 4

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->getActivityRenderer()Lcom/adobe/ttpixel/extension/ActivityRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->getWorking()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget-boolean v3, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDidCallback:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    if-eq v3, v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDidCallback:Z

    iget v0, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mActivityId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activityUIView"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public showActivityView(IIIZFF)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->removeOldZombies(I)V

    invoke-virtual {p0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->findActivityById(I)Lcom/adobe/ttpixel/extension/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/ttpixel/extension/ActivityInfo;

    invoke-direct {v0, p1}, Lcom/adobe/ttpixel/extension/ActivityInfo;-><init>(I)V

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-boolean p4, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDrawBack:Z

    iput p3, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mStartDelay:I

    iput p2, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    iput p5, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mCenterX:F

    iput p6, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mCenterY:F

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iCurrActivity:Lcom/adobe/ttpixel/extension/ActivityInfo;

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->getActivitySurfaceView()Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iGLView:Lcom/adobe/ttpixel/extension/ActivitySurfaceView;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/ActivitySurfaceView;->getActivityRenderer()Lcom/adobe/ttpixel/extension/ActivityRenderer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/adobe/ttpixel/extension/ActivityRenderer;->setUpCallback(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;Lcom/adobe/ttpixel/extension/ActivityInfo;)V

    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->addGLSurfaceView(J)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->runStackedCallback()V

    goto :goto_0
.end method

.method protected zombieActivityById(I)Lcom/adobe/ttpixel/extension/ActivityInfo;
    .locals 4

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/ActivityInfo;

    iget v3, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mActivityId:I

    if-ne v3, p1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mZombie:Z

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextActivityUI;->iList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
