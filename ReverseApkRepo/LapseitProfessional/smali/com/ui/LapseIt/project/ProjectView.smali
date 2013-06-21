.class public Lcom/ui/LapseIt/project/ProjectView;
.super Landroid/app/TabActivity;
.source "ProjectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;,
        Lcom/ui/LapseIt/project/ProjectView$TABS;
    }
.end annotation


# static fields
.field private static PREVIOUS_FRAME_TAG:Ljava/lang/String;

.field private static PREVIOUS_PLAYING_TAG:Ljava/lang/String;

.field private static PREVIOUS_TAB_TAG:Ljava/lang/String;

.field public static audioFile:Ljava/io/File;

.field public static audioPosition:F

.field public static audioUri:Landroid/net/Uri;

.field static framesString:Ljava/lang/String;

.field private static previewRect:Landroid/graphics/Rect;

.field private static previousFrame2:I

.field private static previousLooping:Z

.field private static projectView:Lcom/ui/LapseIt/project/ProjectView;

.field static renderedFile:Ljava/io/File;


# instance fields
.field controls:Lcom/ui/LapseIt/project/ProjectControls;

.field private currentTab:Lcom/ui/LapseIt/project/ProjectView$TABS;

.field private dm:Landroid/util/DisplayMetrics;

.field private extras:Landroid/os/Bundle;

.field private framesPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intent:Landroid/content/Intent;

.field previewContainer:Landroid/widget/RelativeLayout;

.field private previousPlaying:Z

.field private previousTab:I

.field private quickRenderHandler:Landroid/view/View$OnClickListener;

.field private showContext:Z

.field private spec:Landroid/widget/TabHost$TabSpec;

.field private tabHost:Landroid/widget/TabHost;

.field private tabIndicator:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "previousTab"

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_TAB_TAG:Ljava/lang/String;

    .line 55
    const-string v0, "previousFrame"

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_FRAME_TAG:Ljava/lang/String;

    .line 56
    const-string v0, "previousPlaying"

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_PLAYING_TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 586
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/ProjectView$1;-><init>(Lcom/ui/LapseIt/project/ProjectView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/ProjectView;->quickRenderHandler:Landroid/view/View$OnClickListener;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/ProjectView;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectView;->buildConfirmQuickRender()V

    return-void
.end method

.method static synthetic access$1()Lcom/ui/LapseIt/project/ProjectView;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView;->projectView:Lcom/ui/LapseIt/project/ProjectView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/project/ProjectView;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectView;->startQuickRender()V

    return-void
.end method

.method private final buildConfirmQuickRender()V
    .locals 9

    .prologue
    .line 706
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 708
    const-string v6, "renderencoder"

    invoke-static {p0, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, encoder:Ljava/lang/String;
    const-string v6, "renderquality"

    invoke-static {p0, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 710
    .local v4, quality:I
    const-string v6, "renderfps"

    invoke-static {p0, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 712
    .local v3, fps:I
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, quickMessage:Ljava/lang/String;
    const-string v6, "@encoder@"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 714
    const-string v6, "@quality@"

    invoke-static {p0, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->parseQuality(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 715
    const-string v6, "@fps@"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 717
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080090

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 719
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 720
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080093

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/ui/LapseIt/project/ProjectView$6;

    invoke-direct {v8, p0}, Lcom/ui/LapseIt/project/ProjectView$6;-><init>(Lcom/ui/LapseIt/project/ProjectView;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 726
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080092

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/ui/LapseIt/project/ProjectView$7;

    invoke-direct {v8, p0}, Lcom/ui/LapseIt/project/ProjectView$7;-><init>(Lcom/ui/LapseIt/project/ProjectView;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 735
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 741
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 738
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 739
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final buildMarketRateDialog()V
    .locals 6

    .prologue
    .line 639
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 640
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 642
    .local v2, rateChoice:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 644
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 646
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ui/LapseIt/project/ProjectView$4;

    invoke-direct {v5, p0, v2}, Lcom/ui/LapseIt/project/ProjectView$4;-><init>(Lcom/ui/LapseIt/project/ProjectView;Ljava/util/HashMap;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 676
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ui/LapseIt/project/ProjectView$5;

    invoke-direct {v5, p0, v2}, Lcom/ui/LapseIt/project/ProjectView$5;-><init>(Lcom/ui/LapseIt/project/ProjectView;Ljava/util/HashMap;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 696
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 702
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 699
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 700
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 746
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView;->previewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static getProjectView()Lcom/ui/LapseIt/project/ProjectView;
    .locals 1

    .prologue
    .line 750
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView;->projectView:Lcom/ui/LapseIt/project/ProjectView;

    return-object v0
.end method

.method private setupTabs(I)V
    .locals 8
    .parameter "tabIndex"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b004b

    const v5, 0x7f0b004a

    const v4, 0x7f030015

    .line 375
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ui/LapseIt/project/InfoView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 378
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x5

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 380
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    .line 381
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 385
    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    .line 388
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ui/LapseIt/project/TrimView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    .line 394
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    const-string v2, "trimmer"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 398
    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    .line 401
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ui/LapseIt/project/EffectsView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    .line 407
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    const-string v2, "effects"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 412
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 411
    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    .line 414
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    .line 420
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    const-string v2, "soundtrack"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 424
    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    .line 427
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 429
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ui/LapseIt/project/RenderView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    .line 433
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    const-string v2, "render"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->tabIndicator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 439
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 437
    iput-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    .line 440
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->spec:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 442
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 443
    return-void
.end method

.method private showContextMenu()V
    .locals 2

    .prologue
    .line 481
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ui/LapseIt/project/ProjectView;->showContext:Z

    .line 482
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-virtual {v1, p0}, Lcom/ui/LapseIt/project/ProjectControls;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 486
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/project/ProjectView;->openContextMenu(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startQuickRender()V
    .locals 21

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    const-string v9, "_id"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 597
    .local v18, projectId:J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v17, listToRender:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    invoke-direct {v13, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 602
    .local v13, framesInfo:Lorg/json/JSONArray;
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v16

    .local v16, i:I
    :goto_0
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    if-lt v0, v2, :cond_2

    .line 612
    .end local v13           #framesInfo:Lorg/json/JSONArray;
    .end local v16           #i:I
    :goto_1
    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 616
    .local v3, projectUri:Landroid/net/Uri;
    const-string v4, "quickrender"

    .line 618
    .local v4, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    const-string v9, "directory"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, renderDir:Ljava/lang/String;
    const-string v2, "renderencoder"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, encoder:Ljava/lang/String;
    const-string v2, "renderquality"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 622
    .local v7, quality:I
    const-string v2, "renderfps"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 624
    .local v8, fps:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v10}, Lcom/ui/LapseIt/project/Renderer;->build(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;)Lcom/ui/LapseIt/project/Renderer;

    move-result-object v20

    .line 626
    .local v20, renderer:Lcom/ui/LapseIt/project/Renderer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    const-string v9, "resolution"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 627
    .local v15, fullSensorString:Ljava/lang/String;
    const-string v2, "fullsensor"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 628
    .local v14, fullSensor:Z
    move-object/from16 v0, v20

    iput-boolean v14, v0, Lcom/ui/LapseIt/project/Renderer;->isFullSensor:Z

    .line 630
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 631
    sget-boolean v2, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    if-eqz v2, :cond_0

    .line 632
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 634
    :cond_0
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/Renderer;->renderFileSequence(Ljava/util/ArrayList;)V

    .line 636
    :cond_1
    return-void

    .line 603
    .end local v3           #projectUri:Landroid/net/Uri;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #renderDir:Ljava/lang/String;
    .end local v6           #encoder:Ljava/lang/String;
    .end local v7           #quality:I
    .end local v8           #fps:I
    .end local v14           #fullSensor:Z
    .end local v15           #fullSensorString:Ljava/lang/String;
    .end local v20           #renderer:Lcom/ui/LapseIt/project/Renderer;
    .restart local v13       #framesInfo:Lorg/json/JSONArray;
    .restart local v16       #i:I
    :cond_2
    :try_start_1
    new-instance v12, Ljava/io/File;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v9, "filepath"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v12, fileToRender:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 602
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 608
    .end local v12           #fileToRender:Ljava/io/File;
    .end local v13           #framesInfo:Lorg/json/JSONArray;
    .end local v16           #i:I
    :catch_0
    move-exception v11

    .line 609
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 469
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/project/ProjectView;->showContext:Z

    .line 475
    :goto_0
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ui/LapseIt/project/ProjectView;->showContext:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ui/LapseIt/project/ProjectView;->showContext:Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 20
    .parameter "item"

    .prologue
    .line 528
    sget-object v15, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, filepath:Ljava/lang/String;
    invoke-static {v7}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, extension:Ljava/lang/String;
    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 532
    :cond_0
    const-string v15, "\\."

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, extArray:[Ljava/lang/String;
    array-length v15, v5

    add-int/lit8 v15, v15, -0x1

    aget-object v4, v5, v15

    .line 534
    .local v4, ext:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    .line 535
    move-object v6, v4

    .line 539
    .end local v4           #ext:Ljava/lang/String;
    .end local v5           #extArray:[Ljava/lang/String;
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget-object v17, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PLAY:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual/range {v17 .. v17}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 541
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 542
    .local v13, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v8, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 544
    .local v10, mimeType:Ljava/lang/String;
    invoke-virtual {v8, v13, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v15, "mp4"

    invoke-virtual {v6, v15}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 547
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/ui/LapseIt/project/ProjectView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ui/LapseIt/project/ProjectView;->setRequestedOrientation(I)V

    .line 581
    const/4 v15, 0x1

    return v15

    .line 549
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v10       #mimeType:Ljava/lang/String;
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_3
    const-string v15, "Which player should I use?"

    invoke-static {v8, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 551
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #mimeType:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget-object v17, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PUBLISH:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual/range {v17 .. v17}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 553
    new-instance v3, Landroid/content/ContentValues;

    const/4 v15, 0x4

    invoke-direct {v3, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 554
    .local v3, content:Landroid/content/ContentValues;
    const-string v15, "title"

    const-string v16, "Lapse It time-lapse video"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v15, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string v15, "mime_type"

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v15, "_data"

    sget-object v16, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v15, "_size"

    sget-object v16, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v15, "title"

    const-string v16, "Time-lapse video created with Lapse It"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 562
    .local v11, resolver:Landroid/content/ContentResolver;
    sget-object v15, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v15, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 564
    .local v14, uriUpload:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 565
    .local v12, shareIntent:Landroid/content/Intent;
    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v12, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 568
    const-string v15, "_data"

    sget-object v16, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v15, "_size"

    sget-object v16, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 570
    const-string v15, "Sharing video"

    invoke-static {v12, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 571
    .end local v3           #content:Landroid/content/ContentValues;
    .end local v11           #resolver:Landroid/content/ContentResolver;
    .end local v12           #shareIntent:Landroid/content/Intent;
    .end local v14           #uriUpload:Landroid/net/Uri;
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget-object v17, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->CLOSE:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual/range {v17 .. v17}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 572
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    const-wide/high16 v17, 0x4010

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v15

    double-to-int v2, v15

    .line 573
    .local v2, chance:I
    const-string v15, "marketRated"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, marketRated:Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v15, "done"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 575
    :cond_6
    const/4 v15, 0x2

    if-ne v2, v15, :cond_2

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->buildMarketRateDialog()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super/range {p0 .. p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 113
    const v2, 0x7f030017

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->setContentView(I)V

    .line 115
    sput-object p0, Lcom/ui/LapseIt/project/ProjectView;->projectView:Lcom/ui/LapseIt/project/ProjectView;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    .line 119
    if-eqz p1, :cond_2

    .line 120
    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_TAB_TAG:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previousTab:I

    .line 121
    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_PLAYING_TAG:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previousPlaying:Z

    .line 129
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->tabHost:Landroid/widget/TabHost;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    const-string v5, "resolution"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 133
    .local v20, resolution:Ljava/lang/String;
    const/high16 v18, 0x3fc0

    .line 134
    .local v18, previewRatio:F
    const-string v2, "fullsensor"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    const v18, 0x3fe38e39

    .line 148
    :cond_0
    :goto_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 151
    const v2, 0x7f0b0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previewContainer:Landroid/widget/RelativeLayout;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_8

    .line 154
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/ui/LapseIt/project/ProjectView;->previewRect:Landroid/graphics/Rect;

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previewContainer:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v6, Lcom/ui/LapseIt/project/ProjectView;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v7, Lcom/ui/LapseIt/project/ProjectView;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->framesPath:Ljava/util/ArrayList;

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 164
    .local v12, framesId:J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 165
    const-string v5, "framesinfo"

    aput-object v5, v4, v2

    .line 168
    .local v4, projection:[Ljava/lang/String;
    sget-object v2, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 169
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 170
    .local v8, cur:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    const-string v2, "framesinfo"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    .line 174
    new-instance v2, Lcom/ui/LapseIt/project/ProjectControls;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/ProjectView;->previewContainer:Landroid/widget/RelativeLayout;

    invoke-direct {v2, v5}, Lcom/ui/LapseIt/project/ProjectControls;-><init>(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectControls;->setupControls()V

    .line 178
    :try_start_0
    new-instance v14, Lorg/json/JSONArray;

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 181
    .local v14, framesInfo:Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v15, v2, :cond_9

    .line 184
    invoke-static {v14}, Lcom/ui/LapseIt/project/TrimWidget;->setupNumberOfFrames(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v14           #framesInfo:Lorg/json/JSONArray;
    .end local v15           #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->framesPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_a

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->finish()V

    .line 301
    :cond_1
    :goto_5
    return-void

    .line 123
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v8           #cur:Landroid/database/Cursor;
    .end local v12           #framesId:J
    .end local v18           #previewRatio:F
    .end local v20           #resolution:Ljava/lang/String;
    :cond_2
    sget-object v2, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    sput-object v2, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    .line 124
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previousPlaying:Z

    .line 125
    const/4 v2, 0x0

    sput-boolean v2, Lcom/ui/LapseIt/project/ProjectView;->previousLooping:Z

    .line 126
    const/4 v2, 0x0

    sput v2, Lcom/ui/LapseIt/project/ProjectView;->previousFrame2:I

    goto/16 :goto_0

    .line 136
    .restart local v18       #previewRatio:F
    .restart local v20       #resolution:Ljava/lang/String;
    :cond_3
    const-string v2, "1080p"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    const v18, 0x3fe38e39

    goto/16 :goto_1

    .line 138
    :cond_4
    const-string v2, "720p"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    const v18, 0x3fe38e39

    goto/16 :goto_1

    .line 140
    :cond_5
    const-string v2, "480p"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    const/high16 v18, 0x3fc0

    goto/16 :goto_1

    .line 142
    :cond_6
    const-string v2, "360p"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    const v18, 0x3faaaaab

    goto/16 :goto_1

    .line 144
    :cond_7
    const-string v2, "240p"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const v18, 0x3faaaaab

    goto/16 :goto_1

    .line 157
    :cond_8
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/ProjectView;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/ui/LapseIt/project/ProjectView;->previewRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 182
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v8       #cur:Landroid/database/Cursor;
    .restart local v12       #framesId:J
    .restart local v14       #framesInfo:Lorg/json/JSONArray;
    .restart local v15       #i:I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->framesPath:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "filepath"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 185
    .end local v14           #framesInfo:Lorg/json/JSONArray;
    .end local v15           #i:I
    :catch_0
    move-exception v10

    .line 186
    .local v10, e:Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    .line 187
    const-string v2, "trace"

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 194
    .end local v10           #e:Lorg/json/JSONException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectControls;->getPreview()Lcom/ui/LapseIt/project/ProjectPreview;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ui/LapseIt/project/ProjectView;->framesPath:Ljava/util/ArrayList;

    sget v6, Lcom/ui/LapseIt/project/ProjectView;->previousFrame2:I

    invoke-virtual {v2, v5, v6}, Lcom/ui/LapseIt/project/ProjectPreview;->setupPreview(Ljava/util/ArrayList;I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->extras:Landroid/os/Bundle;

    const-string v5, "directory"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, directory:Ljava/lang/String;
    if-nez v9, :cond_c

    .line 199
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->framesPath:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 201
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    .line 203
    :cond_b
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v21, values:Landroid/content/ContentValues;
    const-string v2, "directory"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    .end local v11           #file:Ljava/io/File;
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_c
    if-nez v9, :cond_d

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->finish()V

    goto/16 :goto_5

    .line 212
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    .line 213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previousTab:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->setupTabs(I)V

    .line 293
    :cond_e
    :goto_6
    sget-boolean v2, Lcom/ui/LapseIt/project/ProjectView;->previousLooping:Z

    if-eqz v2, :cond_f

    .line 294
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ui/LapseIt/project/ProjectPreview;->setLoop(Z)V

    .line 297
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previousPlaying:Z

    if-eqz v2, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectControls;->getPreview()Lcom/ui/LapseIt/project/ProjectPreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectPreview;->playPreview()V

    .line 299
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/ui/LapseIt/project/ProjectControls;->toggleButtonStatus(Z)V

    goto/16 :goto_5

    .line 215
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ui/LapseIt/project/ProjectView;->previousTab:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->setupTabs(I)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f08008f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 219
    const v2, 0x7f0b0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 220
    .local v16, portraitImage:Landroid/widget/ImageView;
    new-instance v2, Lcom/ui/LapseIt/project/ProjectView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/ui/LapseIt/project/ProjectView$2;-><init>(Lcom/ui/LapseIt/project/ProjectView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v2, 0x7f0b0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 229
    .local v19, quickRenderButton:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/ProjectView;->quickRenderHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v2

    if-nez v2, :cond_e

    .line 233
    const v2, 0x7f0b0055

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ui/LapseIt/project/ProjectView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 234
    .local v17, previewAds:Landroid/widget/RelativeLayout;
    invoke-static/range {p0 .. p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    new-instance v2, Lcom/ui/LapseIt/project/ProjectView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/ui/LapseIt/project/ProjectView$3;-><init>(Lcom/ui/LapseIt/project/ProjectView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 258
    :cond_11
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 496
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, i:I
    :goto_0
    if-gez v4, :cond_2

    .line 500
    sget-object v5, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, filepath:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, extension:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 504
    :cond_0
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, extArray:[Ljava/lang/String;
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v1, v5

    .line 506
    .local v0, ext:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 507
    move-object v2, v0

    .line 511
    .end local v0           #ext:Ljava/lang/String;
    .end local v1           #extArray:[Ljava/lang/String;
    :cond_1
    const-string v5, "mp4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 512
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PLAY:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual {v6}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 517
    :goto_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PUBLISH:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual {v6}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 518
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->CLOSE:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual {v6}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 520
    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 521
    return-void

    .line 497
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #filepath:Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 496
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 514
    .restart local v2       #extension:Ljava/lang/String;
    .restart local v3       #filepath:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PLAY:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-virtual {v7}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->getStringId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080102

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->getCurrentFrame()I

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->getCurrentFrame()I

    move-result v0

    sput v0, Lcom/ui/LapseIt/project/ProjectView;->previousFrame2:I

    .line 358
    :cond_0
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->setFinished()V

    .line 360
    sput-object v1, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    .line 361
    sput-object v1, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    .line 362
    const/4 v0, 0x0

    sput v0, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    .line 364
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 365
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 305
    if-eqz p1, :cond_0

    const-string v0, "audioFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "audioUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    .line 307
    new-instance v0, Ljava/io/File;

    const-string v1, "audioFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    .line 308
    const-string v0, "audioPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    .line 310
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 311
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/ui/LapseIt/project/ProjectView;->showContext:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectView;->showContextMenu()V

    .line 350
    :goto_0
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 351
    return-void

    .line 348
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/ProjectView;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 316
    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_FRAME_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->getCurrentFrame()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView;->currentTab:Lcom/ui/LapseIt/project/ProjectView$TABS;

    if-nez v1, :cond_2

    .line 319
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_TAB_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/ui/LapseIt/project/ProjectView;->previousTab:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    :goto_0
    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    if-eqz v1, :cond_3

    .line 325
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_PLAYING_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    :cond_0
    :goto_1
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 331
    const-string v1, "audioUri"

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "audioFile"

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "audioPosition"

    sget v2, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 336
    :cond_1
    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isLooping:Z

    sput-boolean v1, Lcom/ui/LapseIt/project/ProjectView;->previousLooping:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_2
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    return-void

    .line 321
    :cond_2
    :try_start_1
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_TAB_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView;->currentTab:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectView$TABS;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    if-nez v1, :cond_0

    .line 327
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->PREVIOUS_PLAYING_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 104
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 371
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 372
    return-void
.end method

.method public setCurrentTab(Lcom/ui/LapseIt/project/ProjectView$TABS;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView;->currentTab:Lcom/ui/LapseIt/project/ProjectView$TABS;

    .line 447
    return-void
.end method
