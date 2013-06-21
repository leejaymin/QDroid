.class public Lcom/ui/LapseIt/list/ListQuickAction;
.super Lui/utils/QuickAction/QuickActionPopup;
.source "ListQuickAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/list/ListQuickAction$ACTION;
    }
.end annotation


# instance fields
.field private actionClickHandler:Landroid/view/View$OnClickListener;

.field private groupExpanded:Z

.field private groupPosition:I

.field private mExtras:Landroid/os/Bundle;

.field private parent:Lcom/ui/LapseIt/list/ListView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/ui/LapseIt/list/ListView;IIZ)V
    .locals 1
    .parameter "contentView"
    .parameter "listView"
    .parameter "width"
    .parameter "height"
    .parameter "fousable"

    .prologue
    .line 60
    invoke-direct {p0, p1, p3, p4, p5}, Lui/utils/QuickAction/QuickActionPopup;-><init>(Landroid/view/View;IIZ)V

    .line 116
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/list/ListQuickAction$1;-><init>(Lcom/ui/LapseIt/list/ListQuickAction;)V

    iput-object v0, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    .line 62
    iput-object p2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    .line 65
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/list/ListQuickAction;->setContentView(I)V

    .line 66
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/list/ListQuickAction;->setContainerView(I)V

    .line 67
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/list/ListQuickAction;->setContentAnimation(I)V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/list/ListQuickAction;)Lcom/ui/LapseIt/list/ListView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/list/ListQuickAction;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/ui/LapseIt/list/ListQuickAction;->groupExpanded:Z

    return v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/list/ListQuickAction;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/ui/LapseIt/list/ListQuickAction;->groupPosition:I

    return v0
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/ui/LapseIt/list/ListQuickAction;->createConfirmDeleteDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/ui/LapseIt/list/ListQuickAction;->createConfirmWatchDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/ui/LapseIt/list/ListQuickAction;->buildNoVideoAlert()V

    return-void
.end method

.method private final buildNoVideoAlert()V
    .locals 5

    .prologue
    .line 401
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    const-string v3, "No suitable video player"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 403
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 404
    const-string v3, "There\'s no suitable player to see this kind of file, please install an app like RockPlayer and try again"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 405
    const-string v3, "Ok"

    new-instance v4, Lcom/ui/LapseIt/list/ListQuickAction$4;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/list/ListQuickAction$4;-><init>(Lcom/ui/LapseIt/list/ListQuickAction;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 417
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createConfirmDeleteDialog()V
    .locals 3

    .prologue
    .line 329
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/list/ListQuickAction$2;-><init>(Lcom/ui/LapseIt/list/ListQuickAction;)V

    .line 347
    .local v0, dialogResponseHandler:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    const v2, 0x7f080081

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 349
    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 350
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 351
    const-string v2, "Delete"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 352
    const-string v2, "Cancel"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void
.end method

.method private createConfirmWatchDialog()V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/list/ListQuickAction$3;-><init>(Lcom/ui/LapseIt/list/ListQuickAction;)V

    .line 391
    .local v0, dialogResponseHandler:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    const-string v2, "Non-native extension"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 393
    const-string v2, "Most Android devices only support mp4 files, so this video may be unplayable"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 394
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 395
    const-string v2, "Try anyway"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 396
    const-string v2, "Cancel"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 398
    return-void
.end method


# virtual methods
.method protected invertContentView(Z)V
    .locals 0
    .parameter "invert"

    .prologue
    .line 423
    return-void
.end method

.method public showAsQuickAction(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 12
    .parameter "anchor"
    .parameter "extras"
    .parameter "isGroup"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f080117

    const v9, 0x7f020028

    const v8, 0x7f02001f

    const v7, 0x7f020020

    .line 72
    iput-object p2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;

    .line 74
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 76
    if-eqz p3, :cond_2

    .line 77
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;

    sget-object v2, Lcom/ui/LapseIt/list/ListTreeAdapter;->GROUP_POSITION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->groupPosition:I

    .line 79
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/list/ListView;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    iget v2, p0, Lcom/ui/LapseIt/list/ListQuickAction;->groupPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->groupExpanded:Z

    .line 81
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DETAILS:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;

    const-string v2, "renderedinfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, renderedColumn:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v11, v11}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ZIP:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETEPROJECT:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0           #renderedColumn:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/list/ListQuickAction;->showAsQuickAction(Landroid/view/View;)V

    .line 114
    return-void

    .line 87
    .restart local v0       #renderedColumn:Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->groupExpanded:Z

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->RENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->RENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    .end local v0           #renderedColumn:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->PUBLISH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETERENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/ui/LapseIt/list/ListQuickAction;->mActionList:Ljava/util/ArrayList;

    new-instance v2, Lui/utils/QuickAction/QuickActionItem;

    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/list/ListQuickAction;->parent:Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/list/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/list/ListQuickAction;->actionClickHandler:Landroid/view/View$OnClickListener;

    sget-object v6, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-direct {v2, v3, v4, v5, v6}, Lui/utils/QuickAction/QuickActionItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/Enum;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
