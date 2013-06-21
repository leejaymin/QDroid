.class public Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;
.super Ljava/lang/Object;
.source "StandardScreenManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ScreenManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    }
.end annotation


# static fields
.field private static final TRACE_FRAMEWORK:Z


# instance fields
.field private _delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

.field private _frameworkHooksEnabled:Z

.field private _stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

.field private _storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_frameworkHooksEnabled:Z

    .line 71
    iput-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 72
    iput-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->wantsNewScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->storeDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    return-void
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->startNewScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->pushDescriptionAndActivity(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    return-void
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->popEntry()Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    return-object v0
.end method

.method static synthetic access$800(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->doFinishDisplay()V

    return-void
.end method

.method private doFinishDisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getScreenActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    .line 233
    .local v1, screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    invoke-interface {v1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 237
    .end local v1           #screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    :cond_0
    iput-object v3, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 238
    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setStack(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)V

    .line 239
    return-void
.end method

.method private getDirection(I)Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;
    .locals 1
    .parameter "anim"

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 282
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->NONE:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    :goto_0
    return-object v0

    .line 276
    :pswitch_0
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->FORWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    goto :goto_0

    .line 278
    :pswitch_1
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->NONE:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    goto :goto_0

    .line 280
    :pswitch_2
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->BACKWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getScreenActivities()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v3, screenActivities:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;>;"
    const/4 v2, 0x0

    .line 299
    .local v2, lastAddedActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .local v1, entry:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    :goto_0
    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v0

    .line 301
    .local v0, activity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    if-eqz v2, :cond_0

    if-eq v0, v2, :cond_1

    .line 302
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    move-object v2, v0

    .line 299
    :cond_1
    #getter for: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->access$600(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v1

    goto :goto_0

    .line 306
    .end local v0           #activity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    :cond_2
    return-object v3
.end method

.method private onFrameworkEntered()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;->screenManagerWillEnterFramework(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V

    .line 316
    :cond_0
    return-void
.end method

.method private onFrameworkLeft()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;->screenManagerDidLeaveFramework(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V

    .line 325
    :cond_0
    return-void
.end method

.method private popEntry()Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 339
    .local v0, previous:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 343
    .end local v0           #previous:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    :goto_0
    return-object v0

    .line 342
    .restart local v0       #previous:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    :cond_0
    #getter for: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->access$600(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setStack(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)V

    goto :goto_0
.end method

.method private pushDescriptionAndActivity(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
    .locals 3
    .parameter "model"
    .parameter "screen"

    .prologue
    .line 347
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;-><init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setStack(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)V

    .line 348
    return-void
.end method

.method private setFrameworkHooksEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_frameworkHooksEnabled:Z

    .line 357
    return-void
.end method

.method private setStack(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 361
    .local v0, oldStack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 362
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_frameworkHooksEnabled:Z

    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 366
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->onFrameworkEntered()V

    goto :goto_0

    .line 367
    :cond_2
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->onFrameworkLeft()V

    goto :goto_0
.end method

.method private startNewScreen()V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v0

    .line 374
    .local v0, oldScreen:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->startNewScreen()V

    .line 375
    return-void
.end method

.method private storeDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 379
    return-void
.end method

.method private wantsNewActivity(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;Lcom/scoreloop/client/android/ui/framework/ActivityDescription;)Z
    .locals 1
    .parameter "description"
    .parameter "referenceDescription"

    .prologue
    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method private wantsNewScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z
    .locals 2
    .parameter "description"
    .parameter "referenceDescription"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;->screenManagerWantsNewScreen(Lcom/scoreloop/client/android/ui/framework/ScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private withNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;ZLjava/lang/Runnable;)V
    .locals 3
    .parameter "navigationType"
    .parameter "force"
    .parameter "runnable"

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v0

    .line 395
    .local v0, activity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 396
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    new-instance v1, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;

    invoke-direct {v1, p1, p3}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;-><init>(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;Ljava/lang/Runnable;)V

    .line 400
    .local v1, navigationIntent:Lcom/scoreloop/client/android/ui/framework/NavigationIntent;
    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->execute()V

    goto :goto_0
.end method


# virtual methods
.method protected applyCurrentDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V
    .locals 12
    .parameter "referenceDescription"
    .parameter "anim"

    .prologue
    const/4 v11, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v8

    .line 76
    .local v8, screenDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v7

    .line 78
    .local v7, screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    iget-object v9, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    invoke-direct {p0, p2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getDirection(I)Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    move-result-object v10

    invoke-interface {v9, v8, v10}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;->screenManagerWillShowScreenDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;)V

    .line 81
    invoke-virtual {v8}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getHeaderDescription()Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v4

    .line 82
    .local v4, headerDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getHeaderDescription()Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v9

    invoke-direct {p0, v4, v9}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->wantsNewActivity(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;Lcom/scoreloop/client/android/ui/framework/ActivityDescription;)Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->setWantsClearTop(Z)V

    .line 85
    :cond_0
    if-eqz v4, :cond_1

    .line 86
    invoke-interface {v7, v4, p2}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->startHeader(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;I)V

    .line 92
    :goto_0
    invoke-virtual {v8}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getBodyDescriptions()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, bodyDescriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ActivityDescription;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    .local v0, bodyCount:I
    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getBodyDescriptions()Ljava/util/List;

    move-result-object v6

    .line 98
    .local v6, referenceBodyDescriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ActivityDescription;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 99
    .local v3, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 100
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    .line 101
    .local v1, bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    invoke-direct {p0, v1, v9}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->wantsNewActivity(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;Lcom/scoreloop/client/android/ui/framework/ActivityDescription;)Z

    move-result v9

    invoke-virtual {v1, v9}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->setWantsClearTop(Z)V

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    .end local v0           #bodyCount:I
    .end local v1           #bodyDescription:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .end local v2           #bodyDescriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ActivityDescription;>;"
    .end local v3           #count:I
    .end local v5           #i:I
    .end local v6           #referenceBodyDescriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ActivityDescription;>;"
    :cond_1
    invoke-interface {v7}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->startEmptyHeader()V

    goto :goto_0

    .line 105
    .restart local v0       #bodyCount:I
    .restart local v2       #bodyDescriptions:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ActivityDescription;>;"
    :cond_2
    if-nez v0, :cond_4

    .line 106
    invoke-interface {v7}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->startEmptyBody()V

    .line 115
    :cond_3
    :goto_2
    invoke-interface {v7, v8}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->setShortcuts(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 116
    return-void

    .line 107
    :cond_4
    if-ne v0, v11, :cond_5

    .line 108
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    invoke-interface {v7, v9, p2}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->startBody(Lcom/scoreloop/client/android/ui/framework/ActivityDescription;I)V

    goto :goto_2

    .line 109
    :cond_5
    if-le v0, v11, :cond_3

    .line 110
    invoke-direct {p0, v8}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->storeDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 111
    invoke-interface {v7, v8, p2}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->startTabBody(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V

    goto :goto_2
.end method

.method public display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 3
    .parameter "description"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->FORWARD:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    const/4 v1, 0x0

    new-instance v2, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;

    invoke-direct {v2, p0, p1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$1;-><init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->withNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public displayInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;Z)V
    .locals 2
    .parameter "description"
    .parameter "screenActivity"
    .parameter "wantsEmptyStack"

    .prologue
    const/4 v1, 0x1

    .line 142
    if-eqz p3, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setFrameworkHooksEnabled(Z)V

    .line 144
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->doFinishDisplay()V

    .line 145
    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setFrameworkHooksEnabled(Z)V

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->pushDescriptionAndActivity(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    .line 148
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getPreviousDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->applyCurrentDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V

    .line 149
    return-void
.end method

.method public displayPreviousDescription(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 153
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->BACK:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    new-instance v1, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$2;-><init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->withNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;ZLjava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public displayReferencedStackEntryInScreen(ILcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
    .locals 4
    .parameter "stackEntryReference"
    .parameter "newScreenActivity"

    .prologue
    .line 175
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v1

    .line 177
    .local v1, oldScreenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .local v0, entry:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 179
    #setter for: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_screenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    invoke-static {v0, p2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->access$702(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    .line 177
    :cond_0
    #getter for: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->access$600(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->applyCurrentDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V

    .line 184
    .end local v0           #entry:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    .end local v1           #oldScreenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    :cond_2
    return-void
.end method

.method public displayStoredDescriptionInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V
    .locals 2
    .parameter "screenActivity"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 190
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->displayInScreen(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;Z)V

    .line 193
    .end local v0           #description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    :cond_0
    return-void
.end method

.method public displayStoredDescriptionInTabs(Lcom/scoreloop/client/android/ui/framework/TabsActivityProtocol;)V
    .locals 2
    .parameter "tabs"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    if-eqz v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 199
    .local v0, description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_storedDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    .line 200
    invoke-interface {p1, v0}, Lcom/scoreloop/client/android/ui/framework/TabsActivityProtocol;->startDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 202
    .end local v0           #description:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    :cond_0
    return-void
.end method

.method public displayWithEmptyStack(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 7
    .parameter "description"

    .prologue
    const/4 v6, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v3

    .line 211
    .local v3, previousDescription:Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->getScreenActivities()Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, screenActivities:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 213
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 214
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    invoke-interface {v5}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0, v6}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setFrameworkHooksEnabled(Z)V

    .line 219
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setStack(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)V

    .line 222
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    .line 223
    .local v2, lastScreenActivity:Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;->cleanOutSubactivities()V

    .line 224
    invoke-direct {p0, p1, v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->pushDescriptionAndActivity(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;)V

    .line 225
    invoke-virtual {p0, v3, v6}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->applyCurrentDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;I)V

    .line 226
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->setFrameworkHooksEnabled(Z)V

    .line 227
    return-void
.end method

.method public finishDisplay()V
    .locals 3

    .prologue
    .line 243
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->EXIT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    const/4 v1, 0x0

    new-instance v2, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$3;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$3;-><init>(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->withNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;ZLjava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    .locals 2
    .parameter "id"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 254
    .local v0, s:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCurrentActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 259
    .local v0, s:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenActivity()Lcom/scoreloop/client/android/ui/framework/ScreenActivityProtocol;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    .line 265
    .local v0, s:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentStackEntryReference()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    invoke-static {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getDepth(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)I

    move-result v0

    return v0
.end method

.method protected getPreviousDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v1

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_stack:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    #getter for: Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->_next:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->access$600(Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;)Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;

    move-result-object v0

    .line 291
    .local v0, previousEntry:Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager$StackEntry;->getScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v1

    goto :goto_0
.end method

.method public onShowedTab(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 2
    .parameter "screenDescription"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->NONE:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    invoke-interface {v0, p1, v1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;->screenManagerWillShowScreenDescription(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;)V

    .line 330
    return-void
.end method

.method public onWillShowOptionsMenu()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;->screenManagerWillShowOptionsMenu()V

    .line 335
    return-void
.end method

.method public setDelegate(Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/StandardScreenManager;->_delegate:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;

    .line 353
    return-void
.end method
