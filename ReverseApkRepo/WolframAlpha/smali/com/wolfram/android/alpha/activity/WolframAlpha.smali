.class public Lcom/wolfram/android/alpha/activity/WolframAlpha;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;,
        Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;,
        Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;
    }
.end annotation


# static fields
.field private static final ABOUT_MENU_ID:I = 0x7

.field public static final ACTION_DO_QUERY:Ljava/lang/String; = "com.wolfram.android.alpha.activity.WolframAlpha.DO_QUERY"

.field private static final ADDFAVORITE_MENU_ID:I = 0x2

.field private static final ASSUMPTIONS_ACTIVITY_CODE:I = 0x2a

.field private static final EXAMPLES_ACTIVITY_CODE:I = 0x2b

.field private static final EXAMPLES_MENU_ID:I = 0x6

.field private static final FAVORITES_ACTIVITY_CODE:I = 0x2d

.field private static final FAVORITES_MENU_ID:I = 0x3

.field private static final HISTORY_ACTIVITY_CODE:I = 0x2c

.field private static final HISTORY_MENU_ID:I = 0x4

.field public static final LICENSE_CHECK_ACTION_DO_QUERY:Ljava/lang/String; = "com.wolfram.android.alpha.activity.WolframAlpha.LICENSE_CHECK_ACTION_DO_QUERY"

.field private static final POD_MENU_ITEM_COPYMATHEMATICAINPUT:I = 0x3

.field private static final POD_MENU_ITEM_COPYTEXT:I = 0x2

.field private static final POD_MENU_ITEM_SAVEIMAGE:I = 0x6

.field private static final POD_MENU_ITEM_SAVESOUND:I = 0x7

.field private static final POD_MENU_ITEM_SENDIMAGE:I = 0x5

.field private static final POD_MENU_ITEM_SHAREONFACEBOOK:I = 0x4

.field private static final POD_MENU_ITEM_USEASINPUT:I = 0x1

.field private static final PREFS_MENU_ID:I = 0x1

.field private static final SEARCH_MENU_ID:I = 0x8

.field private static final SHARE_MENU_ID:I = 0x5

.field private static final SHARING_ACTIVITY_CHOOSER_CODE:I = 0x2f

.field public static final TYPE_GIVE_FEEDBACK:Ljava/lang/Integer; = null

.field public static final TYPE_RECOMMEND_THIS_APP:Ljava/lang/Integer; = null

.field public static final TYPE_RELATED_LINKS:Ljava/lang/Integer; = null

.field public static final TYPE_SEARCH_WEB:Ljava/lang/Integer; = null

.field public static final TYPE_SOURCE_INFORMATION:Ljava/lang/Integer; = null

.field private static final VOICE_RECOGNITION_REQUEST_CODE:I = 0x2e

.field public static authenticating_bar_view:Landroid/view/View; = null

.field private static instantmath_view:Landroid/widget/TextView; = null

.field public static isFormulaActivity:Z = false

.field private static logger:Ljava/util/logging/Logger; = null

.field private static pickIntent:Landroid/content/Intent; = null

.field public static pod_docked_title_bar_listview:Landroid/widget/ListView; = null

.field private static final stateFile:Ljava/lang/String; = "state"


# instance fields
.field private app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

.field private app_ID:Ljava/lang/String;

.field private doQuery_PodStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

.field private doQuery_isTryAgain:Z

.field private doQuery_query:Lcom/wolfram/alpha/WAQuery;

.field private facebook:Lcom/facebook/android/Facebook;

.field private facebook_menuitem:Landroid/view/MenuItem;

.field private imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

.field private isRestore:Z

.field private isRestore_license:Z

.field private kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

.field private location_dialog:Landroid/app/Dialog;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mainHandler:Landroid/os/Handler;

.field private new_assumptions_text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar_Animation:Landroid/graphics/drawable/AnimationDrawable;

.field private queryTask:Lcom/wolfram/android/alpha/QueryTask;

.field private stopLVLAnimation_restartQuery_runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, "com.wolfram.android.alpha.activity.WolframAlpha"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->logger:Ljava/util/logging/Logger;

    .line 149
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_SEARCH_WEB:Ljava/lang/Integer;

    .line 151
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_SOURCE_INFORMATION:Ljava/lang/Integer;

    .line 153
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_GIVE_FEEDBACK:Ljava/lang/Integer;

    .line 154
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_RELATED_LINKS:Ljava/lang/Integer;

    .line 156
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_RECOMMEND_THIS_APP:Ljava/lang/Integer;

    .line 158
    sput-object v2, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    .line 160
    sput-object v2, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pickIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z

    .line 461
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mainHandler:Landroid/os/Handler;

    .line 463
    new-instance v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;

    invoke-direct {v0, p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$2;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->stopLVLAnimation_restartQuery_runnable:Ljava/lang/Runnable;

    .line 2900
    const-string v0, "181575025239841"

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app_ID:Ljava/lang/String;

    .line 2902
    new-instance v0, Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app_ID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    .line 3425
    return-void
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/google/android/vending/licensing/LicenseChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/google/android/vending/licensing/LicenseChecker;)Lcom/google/android/vending/licensing/LicenseChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/PodStateButtonData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_PodStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_isTryAgain:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/wolfram/alpha/WAQuery;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->executeQuery(Lcom/wolfram/alpha/WAQuery;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/ImageMap_ButtonData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/facebook/android/Facebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->postFeedonFacebook()V

    return-void
.end method

.method static synthetic access$300(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->stopLVLAnimation_restartQuery_runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->progressBar_Animation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/WolframAlphaApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z

    return v0
.end method

.method static synthetic access$900(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/alpha/WAQuery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_query:Lcom/wolfram/alpha/WAQuery;

    return-object v0
.end method

.method private cancelQuery()V
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setPerformingQuery(Z)V

    .line 1681
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->queryTask:Lcom/wolfram/android/alpha/QueryTask;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->queryTask:Lcom/wolfram/android/alpha/QueryTask;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/QueryTask;->cancel()V

    .line 1685
    :cond_0
    return-void
.end method

.method private comwolframalpha()Z
    .locals 2

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 1002
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/PrefsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1004
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "debug"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1008
    const/4 v1, 0x1

    return v1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .parameter "f1"
    .parameter "f2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3405
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3407
    .local v1, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3409
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x800

    new-array v0, v4, [B

    .line 3413
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-ltz v2, :cond_0

    .line 3415
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 3417
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 3419
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 3421
    return-void
.end method

.method private doPodStateQuery(Lcom/wolfram/android/alpha/PodStateButtonData;I)V
    .locals 5
    .parameter "buttonData"
    .parameter "selectedPosition"

    .prologue
    .line 1762
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    .line 1764
    .local v1, oldQuery:Lcom/wolfram/alpha/WAQuery;
    if-nez v1, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1768
    :cond_0
    invoke-interface {v1}, Lcom/wolfram/alpha/WAQuery;->copy()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 1773
    .local v0, newQuery:Lcom/wolfram/alpha/WAQuery;
    invoke-interface {v0}, Lcom/wolfram/alpha/WAQuery;->clearIncludePodIDs()V

    .line 1775
    invoke-interface {v0}, Lcom/wolfram/alpha/WAQuery;->clearPodTitles()V

    .line 1777
    iget-object v2, p1, Lcom/wolfram/android/alpha/PodStateButtonData;->state:Lcom/wolfram/alpha/WAPodState;

    .line 1779
    .local v2, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface {v2}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1781
    invoke-interface {v2, p2}, Lcom/wolfram/alpha/WAPodState;->setCurrentIndex(I)Lcom/wolfram/alpha/WAPodState;

    move-result-object v2

    .line 1785
    :cond_1
    invoke-interface {v0, v2}, Lcom/wolfram/alpha/WAQuery;->addPodState(Lcom/wolfram/alpha/WAPodState;)V

    .line 1787
    iget-object v3, p1, Lcom/wolfram/android/alpha/PodStateButtonData;->podID:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/wolfram/alpha/WAQuery;->addIncludePodID(Ljava/lang/String;)V

    .line 1791
    iget-object v3, p1, Lcom/wolfram/android/alpha/PodStateButtonData;->podTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/wolfram/alpha/WAQuery;->addPodTitle(Ljava/lang/String;)V

    .line 1795
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1797
    invoke-interface {v1}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/wolfram/alpha/WAQuery;->setGeneralizationInput(Ljava/lang/String;)V

    .line 1799
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v3

    invoke-interface {v3}, Lcom/wolfram/alpha/WAGeneralization;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/wolfram/alpha/WAQuery;->setInput(Ljava/lang/String;)V

    .line 1804
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v0, p1, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V

    goto :goto_0
.end method

.method private doQuery(Lcom/wolfram/alpha/WAQuery;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 1508
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V

    .line 1510
    return-void
.end method

.method private doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V
    .locals 20
    .parameter "query"
    .parameter "buttonData"
    .parameter "isTryAgain"

    .prologue
    .line 1535
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_query:Lcom/wolfram/alpha/WAQuery;

    .line 1537
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_PodStateButtonData:Lcom/wolfram/android/alpha/PodStateButtonData;

    .line 1539
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery_isTryAgain:Z

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setPerformingQuery(Z)V

    .line 1545
    const v4, 0x7f0e0065

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 1549
    .local v7, queryResultsView:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1551
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getLicenseChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1555
    new-instance v4, Lcom/wolfram/android/alpha/QueryTask;

    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;

    move-result-object v6

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/wolfram/android/alpha/QueryTask;-><init>(Ljava/lang/String;Lcom/wolfram/android/alpha/view/QueryInputView;Landroid/widget/ListView;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->queryTask:Lcom/wolfram/android/alpha/QueryTask;

    .line 1557
    if-nez p2, :cond_0

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    iget-object v4, v4, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1559
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore:Z

    .line 1562
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1566
    .local v19, provider:Ljava/lang/String;
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 1567
    .local v17, new_Date:Ljava/util/Date;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 1568
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    .line 1569
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 1571
    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v19, :cond_3

    const-string v4, ""

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDate_location_notification_shown()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDate_location_notification_shown()Ljava/util/Date;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDate_location_notification_shown()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1575
    :cond_2
    new-instance v4, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Location based services are disabled in Android system settings. Please visit Android system settings to re-enable location services."

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/wolfram/alpha/WAQuery;)V

    invoke-virtual {v4, v5, v6}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v15

    .line 1583
    .local v15, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v15}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->location_dialog:Landroid/app/Dialog;

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->location_dialog:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1654
    .end local v15           #customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .end local v17           #new_Date:Ljava/util/Date;
    .end local v19           #provider:Ljava/lang/String;
    .end local p1
    :goto_0
    return-void

    .line 1587
    .restart local v17       #new_Date:Ljava/util/Date;
    .restart local v19       #provider:Ljava/lang/String;
    .restart local p1
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->executeQuery(Lcom/wolfram/alpha/WAQuery;)V

    goto :goto_0

    .line 1591
    .end local v17           #new_Date:Ljava/util/Date;
    .end local v19           #provider:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline_before()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setOnline_before(Z)V

    .line 1593
    new-instance v4, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/content/Context;Lcom/wolfram/android/alpha/activity/WolframAlpha$1;)V

    .line 1599
    :cond_5
    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/QueryResultAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 1600
    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    const v5, 0x7f040002

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1605
    .local v10, FadeOut:Landroid/view/animation/Animation;
    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/wolfram/android/alpha/QueryResultAdapter;

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->fade_Old_ResultsView(Landroid/view/animation/Animation;)V

    .line 1606
    invoke-virtual {v7}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 1607
    .local v13, contentView:Landroid/view/ViewGroup;
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1608
    .local v18, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xa

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1611
    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v4

    const v5, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1615
    .local v14, cp:Landroid/view/View;
    const v4, 0x7f0e000b

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1618
    .local v12, conn_compu_commu_label:Landroid/widget/TextView;
    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1622
    const v4, 0x7f0e000e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1624
    .local v11, cancel_button:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1628
    const v4, 0x7f0e000c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    .line 1629
    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    const/high16 v5, 0x7f04

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1630
    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->progressBar_Animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->progressBar_Animation:Landroid/graphics/drawable/AnimationDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1632
    sget-object v4, Lcom/wolfram/android/alpha/activity/WolframAlpha;->authenticating_bar_view:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    const v4, 0x7f0c0090

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1638
    .end local v10           #FadeOut:Landroid/view/animation/Animation;
    .end local v11           #cancel_button:Landroid/view/View;
    .end local v12           #conn_compu_commu_label:Landroid/widget/TextView;
    .end local v13           #contentView:Landroid/view/ViewGroup;
    .end local v14           #cp:Landroid/view/View;
    .end local v18           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local p1
    :cond_6
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setOnline_before(Z)V

    .line 1640
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 1641
    new-instance v4, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Unable to reach a Wolfram|Alpha compute server"

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lcom/wolfram/android/alpha/activity/WolframAlpha$4;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$4;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    invoke-virtual {v4, v5, v6}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v4

    const-string v5, "No Internet Connection"

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v15

    .line 1651
    .restart local v15       #customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v15}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v16

    .line 1652
    .local v16, dialog:Landroid/app/Dialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private doQuery(Lcom/wolfram/alpha/WAQuery;Z)V
    .locals 2
    .parameter "query"
    .parameter "isTryAgain"

    .prologue
    .line 1514
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V

    .line 1516
    return-void
.end method

.method private executeQuery(Lcom/wolfram/alpha/WAQuery;)V
    .locals 4
    .parameter "query"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1660
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->queryTask:Lcom/wolfram/android/alpha/QueryTask;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/QueryTask;->stopAllRunnables()V

    .line 1665
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryTask()Lcom/wolfram/android/alpha/QueryTask;

    move-result-object v0

    .local v0, oldQueryTask:Lcom/wolfram/android/alpha/QueryTask;
    if-eqz v0, :cond_0

    .line 1666
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/QueryTask;->stop()V

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getInstantmath_view()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1669
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery_text_view_top_gap()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1670
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery_text_view_top_gap()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    :cond_1
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getInstantmath_view()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1673
    :cond_2
    sget-object v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1674
    :cond_3
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->queryTask:Lcom/wolfram/android/alpha/QueryTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/wolfram/alpha/WAQuery;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1675
    return-void
.end method

.method private getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;
    .locals 3

    .prologue
    const v2, 0x7f0e007f

    .line 3445
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3447
    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/view/QueryInputView;

    move-object v1, p0

    .line 3451
    :goto_0
    return-object v1

    .line 3449
    .restart local p0
    :cond_0
    const v1, 0x7f0e0064

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3451
    .local v0, contentView:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/view/QueryInputView;

    move-object v1, p0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 25
    .parameter "intent"

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 520
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z

    .line 522
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 524
    new-instance v21, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/content/Context;Lcom/wolfram/android/alpha/activity/WolframAlpha$1;)V

    .line 529
    :goto_0
    const/4 v14, 0x0

    .line 531
    .local v14, query:Lcom/wolfram/alpha/WAQuery;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.VIEW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 543
    .local v20, uri:Landroid/net/Uri;
    if-eqz v20, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->apiParamsFromAppURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/wolfram/alpha/WAEngine;->createQueryFromURL(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v14

    .line 636
    .end local v20           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz v14, :cond_2

    .line 638
    const/4 v15, 0x0

    .line 652
    .local v15, queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 654
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;

    move-result-object v15

    .line 668
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 670
    if-eqz v15, :cond_1

    .line 672
    invoke-interface {v14}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    invoke-virtual {v15}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    .line 681
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 685
    .end local v15           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    .end local p0
    :cond_2
    :goto_3
    return-void

    .line 527
    .end local v14           #query:Lcom/wolfram/alpha/WAQuery;
    .restart local p0
    :cond_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore_license:Z

    goto :goto_0

    .line 554
    .restart local v14       #query:Lcom/wolfram/alpha/WAQuery;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.wolfram.android.alpha.activity.WolframAlpha.DO_QUERY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 562
    const-string v21, "com.wolfram.android.alpha.searchresults.querytype"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 565
    .local v19, type:Ljava/lang/String;
    const-string v21, "favorites"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 567
    const-string v21, "com.wolfram.android.alpha.favorites_input"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 570
    .local v10, input:Ljava/lang/String;
    const-string v21, "com.wolfram.android.alpha.favorites_assumptions"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 573
    .local v6, assumptions:[Ljava/lang/String;
    const-string v21, "com.wolfram.android.alpha.favorites_podstates_inputs"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 576
    .local v13, podStateInputs:[Ljava/lang/String;
    const-string v21, "com.wolfram.android.alpha.favorites_podstates_ids"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 579
    .local v12, podStateIDs:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v14

    .line 581
    move-object v5, v6

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_4
    if-ge v9, v11, :cond_5

    aget-object v4, v5, v9

    .line 583
    .local v4, a:Ljava/lang/String;
    invoke-interface {v14, v4}, Lcom/wolfram/alpha/WAQuery;->addAssumption(Ljava/lang/String;)V

    .line 581
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 585
    .end local v4           #a:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    move-object v0, v13

    array-length v0, v0

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 587
    aget-object v21, v13, v8

    aget-wide v22, v12, v8

    move-object v0, v14

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/wolfram/alpha/WAQuery;->addPodState(Ljava/lang/String;J)V

    .line 585
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 589
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #assumptions:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v10           #input:Ljava/lang/String;
    .end local v11           #len$:I
    .end local v12           #podStateIDs:[J
    .end local v13           #podStateInputs:[Ljava/lang/String;
    :cond_6
    const-string v21, "history"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 593
    sget-object v16, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryResultHist:Lcom/wolfram/alpha/WAQueryResult;

    .line 595
    .local v16, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;

    move-result-object v15

    .line 597
    .restart local v15       #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    if-eqz v16, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    sget-object v22, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryHist:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual/range {v21 .. v22}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 603
    const v21, 0x7f0e0065

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 605
    .local v17, queryResultListView:Landroid/widget/ListView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 608
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 611
    sget-object v21, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryHist:Lcom/wolfram/alpha/WAQuery;

    invoke-interface/range {v21 .. v21}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {v15}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    goto/16 :goto_3

    .line 623
    .end local v15           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    .end local v16           #queryResult:Lcom/wolfram/alpha/WAQueryResult;
    .end local v17           #queryResultListView:Landroid/widget/ListView;
    .restart local p0
    :cond_7
    const-string v21, "new"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 628
    const-string v21, "user_query"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 630
    .restart local v10       #input:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v14

    goto/16 :goto_1

    .line 658
    .end local v10           #input:Ljava/lang/String;
    .end local v19           #type:Ljava/lang/String;
    .restart local v15       #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    :cond_8
    const v21, 0x7f0e0065

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/wolfram/android/alpha/view/QueryResultView;

    .line 660
    .local v18, queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;
    invoke-virtual/range {v18 .. v18}, Lcom/wolfram/android/alpha/view/QueryResultView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v21 .. v24}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 663
    .local v7, firstRow:Landroid/view/View;
    const v21, 0x7f0e007f

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    check-cast v15, Lcom/wolfram/android/alpha/view/QueryInputView;

    .restart local v15       #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    goto/16 :goto_2
.end method

.method private isCallable(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 2684
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2689
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postFeedonFacebook()V
    .locals 5

    .prologue
    .line 3209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3211
    .local v0, params:Landroid/os/Bundle;
    const-string v2, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v4

    invoke-interface {v4}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Wolfram|Alpha"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const-string v2, "link"

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v3

    invoke-interface {v3}, Lcom/wolfram/alpha/WAQuery;->toWebsiteURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    iget-boolean v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore:Z

    if-eqz v2, :cond_1

    .line 3218
    const-string v2, "picture"

    const-string v3, "http://www.wolframcdn.com/share-fb-icon.png"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    const-string v3, "feed"

    new-instance v4, Lcom/wolfram/android/alpha/activity/WolframAlpha$10;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$10;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    invoke-virtual {v2, p0, v3, v0, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 3257
    return-void

    .line 3220
    :cond_1
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook_menuitem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook_menuitem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/wolfram/android/alpha/view/SubpodView;

    if-eqz v2, :cond_2

    .line 3221
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook_menuitem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 3222
    .local v1, view:Lcom/wolfram/android/alpha/view/SubpodView;
    const-string v2, "picture"

    iget-object v3, v1, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAImage;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3224
    .end local v1           #view:Lcom/wolfram/android/alpha/view/SubpodView;
    :cond_2
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook_menuitem:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook_menuitem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    instance-of v2, v2, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    if-eqz v2, :cond_0

    .line 3225
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook_menuitem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    .line 3226
    .local v1, view:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    const-string v2, "picture"

    iget-object v3, v1, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAImage;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readInstanceState()Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;
    .locals 14

    .prologue
    .line 2286
    iget-object v11, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v11}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getStateDir()Ljava/io/File;

    move-result-object v1

    .line 2288
    .local v1, d:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 2290
    .local v5, files:[Ljava/lang/String;
    iget-object v11, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v11}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDownloadDir()Ljava/io/File;

    move-result-object v2

    .line 2292
    .local v2, dd:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 2294
    .local v3, dfiles:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2296
    .local v10, state:Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;
    const/4 v6, 0x0

    .line 2298
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 2302
    .local v8, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v12}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getStateDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "state"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2304
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/ObjectInputStream;

    invoke-direct {v9, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2306
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .local v9, in:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;

    move-object v10, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2314
    if-eqz v9, :cond_2

    .line 2317
    :try_start_3
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v9

    .end local v9           #in:Ljava/io/ObjectInputStream;
    .restart local v8       #in:Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 2323
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v10

    .line 2318
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v11

    move-object v8, v9

    .end local v9           #in:Ljava/io/ObjectInputStream;
    .restart local v8       #in:Ljava/io/ObjectInputStream;
    move-object v6, v7

    .line 2319
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 2308
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 2310
    .local v4, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-object v11, Lcom/wolfram/android/alpha/activity/WolframAlpha;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2314
    if-eqz v8, :cond_0

    .line 2317
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 2318
    :catch_2
    move-exception v11

    goto :goto_0

    .line 2314
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v8, :cond_1

    .line 2317
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2319
    :cond_1
    :goto_3
    throw v11

    .line 2318
    :catch_3
    move-exception v12

    goto :goto_3

    .line 2314
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9           #in:Ljava/io/ObjectInputStream;
    .restart local v8       #in:Ljava/io/ObjectInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 2308
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v11

    move-object v4, v11

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v11

    move-object v4, v11

    move-object v8, v9

    .end local v9           #in:Ljava/io/ObjectInputStream;
    .restart local v8       #in:Ljava/io/ObjectInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #in:Ljava/io/ObjectInputStream;
    :cond_2
    move-object v8, v9

    .end local v9           #in:Ljava/io/ObjectInputStream;
    .restart local v8       #in:Ljava/io/ObjectInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private saveImageToPublicArea(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "imageFile"
    .parameter "podTitle"
    .parameter "subpodTitle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2e

    const/4 v10, 0x0

    .line 3264
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "WolframAlpha"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3269
    .local v1, destDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3277
    const/4 v3, 0x0

    .line 3279
    .local v3, fileName:Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v8, ""

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3281
    move-object v3, p3

    .line 3295
    :goto_0
    const/16 v8, 0x1c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3299
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3302
    .local v2, fileExt:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3304
    .local v4, fileToTry:Ljava/io/File;
    const/4 v5, 0x1

    .line 3306
    .local v5, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3308
    new-instance v4, Ljava/io/File;

    .end local v4           #fileToTry:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v4       #fileToTry:Ljava/io/File;
    move v5, v6

    .end local v6           #i:I
    .restart local v5       #i:I
    goto :goto_1

    .line 3283
    .end local v2           #fileExt:Ljava/lang/String;
    .end local v4           #fileToTry:Ljava/io/File;
    .end local v5           #i:I
    :cond_0
    if-eqz p2, :cond_1

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3285
    move-object v3, p2

    goto :goto_0

    .line 3292
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3310
    .restart local v2       #fileExt:Ljava/lang/String;
    .restart local v4       #fileToTry:Ljava/io/File;
    .restart local v5       #i:I
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 3312
    invoke-static {p1, v4}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 3317
    new-instance v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;

    invoke-direct {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;-><init>()V

    .line 3319
    .local v0, client:Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;
    new-instance v7, Landroid/media/MediaScannerConnection;

    invoke-direct {v7, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 3322
    .local v7, mediaScanner:Landroid/media/MediaScannerConnection;
    iput-object v7, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;->mediaScanner:Landroid/media/MediaScannerConnection;

    .line 3324
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$MediaClient;->fileToScan:Ljava/lang/String;

    .line 3326
    invoke-virtual {v7}, Landroid/media/MediaScannerConnection;->connect()V

    .line 3368
    return-object v4
.end method

.method private setQueryInputText(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 3374
    const v1, 0x7f0e007f

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3376
    .local v0, queryInputView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 3378
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3380
    :cond_0
    return-void
.end method

.method private share_Menu_Intent()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2708
    iget-object v7, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v7}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v4

    .line 2713
    .local v4, query:Lcom/wolfram/alpha/WAQuery;
    if-eqz v4, :cond_0

    .line 2727
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2729
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2731
    const-string v7, "android.intent.extra.SUBJECT"

    invoke-interface {v4}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2733
    invoke-interface {v4}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v1

    .line 2735
    .local v1, input:Ljava/lang/String;
    invoke-interface {v4}, Lcom/wolfram/alpha/WAQuery;->toWebsiteURL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2737
    .local v6, webURL:Ljava/lang/String;
    invoke-static {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryToAppURI(Lcom/wolfram/alpha/WAQuery;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2745
    .local v0, appURL:Ljava/lang/String;
    const-string v5, "Compute \'%1$s\' with the Wolfram|Alpha <a href=\"%2$s\">website</a> or <a href=\"%3$s\">mobile app</a>."

    .line 2754
    .local v5, template:Ljava/lang/String;
    new-array v7, v14, [Ljava/lang/Object;

    aput-object v1, v7, v11

    aput-object v6, v7, v12

    aput-object v0, v7, v13

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2756
    .local v3, msg:Ljava/lang/String;
    const-string v7, "html"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2760
    new-instance v7, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v8, 0x7f0c0025

    invoke-virtual {v7, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2765
    new-array v7, v13, [Ljava/lang/Object;

    aput-object v1, v7, v11

    aput-object v6, v7, v12

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2767
    const-string v7, "twitter"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2771
    new-instance v7, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v8, 0x7f0c0024

    invoke-virtual {v7, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2776
    new-array v7, v14, [Ljava/lang/Object;

    aput-object v1, v7, v11

    aput-object v6, v7, v12

    aput-object v0, v7, v13

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2778
    const-string v7, "text"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2788
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pickIntent:Landroid/content/Intent;

    .line 2790
    sget-object v7, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pickIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2792
    sget-object v7, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pickIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.TITLE"

    new-instance v9, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v10, 0x7f0c0026

    invoke-virtual {v9, v10}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2800
    .end local v0           #appURL:Ljava/lang/String;
    .end local v1           #input:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #template:Ljava/lang/String;
    .end local v6           #webURL:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private share_Menu_Intent_exists()Z
    .locals 1

    .prologue
    .line 2698
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->share_Menu_Intent()V

    .line 2700
    sget-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pickIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isCallable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private startAssumptionsActivity(Z)V
    .locals 3
    .parameter "isFormulaPage"

    .prologue
    .line 1040
    sput-boolean p1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isFormulaActivity:Z

    .line 1042
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1044
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1046
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "is_formula"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1048
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1050
    const/16 v2, 0x2a

    invoke-virtual {p0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1052
    return-void
.end method

.method private writeInstanceState(Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 2255
    const/4 v0, 0x0

    .line 2257
    .local v0, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 2261
    .local v2, out:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getStateDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "state"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2263
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2265
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .local v3, out:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2267
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2273
    if-eqz v3, :cond_2

    .line 2276
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 2282
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 2277
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 2278
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2269
    :catch_1
    move-exception v4

    .line 2273
    :goto_1
    if-eqz v2, :cond_0

    .line 2276
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2277
    :catch_2
    move-exception v4

    goto :goto_0

    .line 2273
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 2276
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2278
    :cond_1
    :goto_3
    throw v4

    .line 2277
    :catch_3
    move-exception v5

    goto :goto_3

    .line 2273
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2269
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v2       #out:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public addAssumptionText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "assumption"
    .parameter "nextAssumption_text"

    .prologue
    const/4 v9, 0x0

    .line 1083
    const-string v8, "_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v9

    .line 1087
    .local v4, newLhs:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1089
    .local v7, wasFound:Z
    const/4 v1, 0x0

    .line 1091
    .local v1, i:I
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v8

    invoke-interface {v8}, Lcom/wolfram/alpha/WAQuery;->getAssumptions()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 1093
    .local v5, oldAssumption:Ljava/lang/String;
    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v6, v8, v9

    .line 1095
    .local v6, oldLhs:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1097
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->new_assumptions_text:Ljava/util/List;

    invoke-interface {v8, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const/4 v7, 0x1

    .line 1109
    .end local v5           #oldAssumption:Ljava/lang/String;
    .end local v6           #oldLhs:Ljava/lang/String;
    :cond_0
    if-nez v7, :cond_1

    .line 1110
    iget-object v8, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->new_assumptions_text:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    :cond_1
    return-void

    .line 1105
    .restart local v5       #oldAssumption:Ljava/lang/String;
    .restart local v6       #oldLhs:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public assumptionsClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startAssumptionsActivity(Z)V

    .line 1028
    return-void
.end method

.method public computingCancelClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter "cancelButton"

    .prologue
    .line 2163
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->cancelQuery()V

    .line 2165
    return-void
.end method

.method public didYouMeanClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "dymButton"

    .prologue
    .line 1966
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1968
    .local v0, dym:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setQueryInputText(Ljava/lang/String;)V

    .line 1970
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    .line 1972
    .local v1, query:Lcom/wolfram/alpha/WAQuery;
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 1974
    return-void
.end method

.method public exampleQueryClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "queryView"

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 2151
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2153
    .local v0, input:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setQueryInputText(Ljava/lang/String;)V

    .line 2155
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    .line 2157
    .local v1, newQuery:Lcom/wolfram/alpha/WAQuery;
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 2159
    return-void
.end method

.method public exampleSectionClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "sectionView"

    .prologue
    .line 2134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2136
    .local v0, category:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/ExamplesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2138
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.wolfram.android.alpha.examples_category"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2140
    const/16 v2, 0x2a

    invoke-virtual {p0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2142
    return-void
.end method

.method public findWAKeyboard()Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;
    .locals 1

    .prologue
    .line 2519
    const v0, 0x7f0e005a

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    return-object p0
.end method

.method public formulaClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1032
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startAssumptionsActivity(Z)V

    .line 1034
    return-void
.end method

.method public hideWAKeyboard()V
    .locals 15

    .prologue
    .line 2456
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;

    move-result-object v13

    .line 2458
    .local v13, queryInputView:Landroid/view/View;
    if-eqz v13, :cond_0

    .line 2460
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 2462
    .local v11, imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2469
    .end local v11           #imManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findWAKeyboard()Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-result-object v12

    .line 2471
    .local v12, keyboardView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;
    if-eqz v12, :cond_2

    .line 2473
    const v1, 0x7f0e0064

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 2478
    .local v9, contentView:Landroid/widget/RelativeLayout;
    const-string v1, "dimmer"

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    .line 2480
    .local v10, dimmerView:Landroid/view/View;
    if-eqz v10, :cond_1

    .line 2482
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2486
    :cond_1
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2488
    .local v14, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2498
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2500
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2502
    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2504
    invoke-virtual {v12, v14}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2506
    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2511
    const v1, 0x7f0e0063

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2515
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v9           #contentView:Landroid/widget/RelativeLayout;
    .end local v10           #dimmerView:Landroid/view/View;
    .end local v14           #set:Landroid/view/animation/AnimationSet;
    :cond_2
    return-void
.end method

.method public imagemap_button_clickhandler(Landroid/view/View;)V
    .locals 5
    .parameter "imageMap_Button"

    .prologue
    .line 2187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    iput-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    .line 2189
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    iget-object v3, v3, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->imagemap_bottom_line:Landroid/widget/ImageView;

    const/high16 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2209
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v2

    .line 2211
    .local v2, oldQuery:Lcom/wolfram/alpha/WAQuery;
    if-nez v2, :cond_0

    .line 2226
    :goto_0
    return-void

    .line 2215
    :cond_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    iget-object v3, v3, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->WebURL:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    iget-object v3, v3, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->QueryInput:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2217
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    iget-object v4, v4, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->Title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    .line 2219
    .local v1, newQuery:Lcom/wolfram/alpha/WAQuery;
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    goto :goto_0

    .line 2221
    .end local v1           #newQuery:Lcom/wolfram/alpha/WAQuery;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->imageMap_ButtonData:Lcom/wolfram/android/alpha/ImageMap_ButtonData;

    iget-object v4, v4, Lcom/wolfram/android/alpha/ImageMap_ButtonData;->WebURL:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2223
    .local v0, browserIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public infoClickHandler(Landroid/view/View;)V
    .locals 4
    .parameter "infoButton"

    .prologue
    .line 1691
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/InfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1693
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/InfoButtonData;

    .line 1695
    .local v0, infoButtonData:Lcom/wolfram/android/alpha/InfoButtonData;
    const-string v2, "com.wolfram.android.alpha.podtitle"

    iget-object v3, v0, Lcom/wolfram/android/alpha/InfoButtonData;->podTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    const-string v2, "com.wolfram.android.alpha.infotype"

    iget-object v3, v0, Lcom/wolfram/android/alpha/InfoButtonData;->infoType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1701
    return-void
.end method

.method public isAutoRotate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3460
    const/4 v1, 0x5

    .line 3464
    .local v1, sysAutoRotate:I
    :try_start_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3475
    :goto_0
    if-ne v1, v4, :cond_0

    move v2, v4

    .line 3479
    :goto_1
    return v2

    .line 3467
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3471
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3479
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public linkInfoClickHandler(Landroid/view/View;)V
    .locals 4
    .parameter "infoButton"

    .prologue
    .line 1722
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wolfram/alpha/WALink;

    .line 1723
    .local v1, link:Lcom/wolfram/alpha/WALink;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {v1}, Lcom/wolfram/alpha/WALink;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1725
    .local v0, browserIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1726
    return-void
.end method

.method public mapClickHandler(Landroid/view/View;)V
    .locals 2
    .parameter "mapButton"

    .prologue
    .line 1730
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;

    .line 1732
    .local v1, mapData:Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
    invoke-static {p0, v1}, Lcom/wolfram/android/alpha/activity/MapActivity;->createMapActivityIntent(Landroid/content/Context;Lcom/wolfram/android/alpha/activity/MapActivity$MapData;)Landroid/content/Intent;

    move-result-object v0

    .line 1734
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1736
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 35
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1123
    invoke-super/range {p0 .. p3}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onActivityResult(IILandroid/content/Intent;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 1130
    if-nez p3, :cond_1

    .line 1502
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1134
    .restart local p0
    .restart local p1
    :cond_1
    const/16 v32, 0x2a

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 1136
    const/16 v32, -0x1

    move/from16 v0, p2

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v32

    if-eqz v32, :cond_0

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 1164
    .local v9, bundle:Landroid/os/Bundle;
    const-string v32, "com.wolfram.android.alpha.assumptioninput"

    move-object v0, v9

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1167
    .local v15, input:Ljava/lang/String;
    const-string v32, "com.wolfram.android.alpha.formulavars"

    move-object v0, v9

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1170
    .local v12, formulaVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/wolfram/alpha/WAQuery;->copy()Lcom/wolfram/alpha/WAQuery;

    move-result-object v20

    .line 1172
    .local v20, newQuery:Lcom/wolfram/alpha/WAQuery;
    if-eqz v15, :cond_2

    .line 1174
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/WAQuery;->addAssumption(Ljava/lang/String;)V

    .line 1176
    :cond_2
    if-eqz v12, :cond_3

    .line 1178
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1180
    .local v31, var:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/WAQuery;->addAssumption(Ljava/lang/String;)V

    goto :goto_1

    .line 1185
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v31           #var:Ljava/lang/String;
    :cond_3
    sget-object v32, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    if-eqz v32, :cond_7

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_8

    .line 1189
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->new_assumptions_text:Ljava/util/List;

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1193
    .local v6, assumption_label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->new_assumptions_text:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1203
    .end local v6           #assumption_label:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    .line 1205
    .local v11, counter:I
    if-eqz v15, :cond_5

    .line 1209
    add-int/lit8 v11, v11, 0x1

    .line 1211
    sget-object v32, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->addAssumptionText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_5
    if-eqz v12, :cond_6

    .line 1218
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1224
    .restart local v31       #var:Ljava/lang/String;
    sget-object v32, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->addAssumptionText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1233
    .end local v31           #var:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->new_assumptions_text:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    .end local v11           #counter:I
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    goto/16 :goto_0

    .line 1245
    .restart local p1
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v7, assumption_label_list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v32, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;->assumptions_text_array:Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1248
    .restart local v6       #assumption_label:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1250
    .end local v6           #assumption_label:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1269
    .end local v7           #assumption_label_list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #formulaVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #input:Ljava/lang/String;
    .end local v20           #newQuery:Lcom/wolfram/alpha/WAQuery;
    :cond_a
    const/16 v32, 0x2c

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 1271
    const/16 v32, -0x1

    move/from16 v0, p2

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 1275
    sget-object v25, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryResultHist:Lcom/wolfram/alpha/WAQueryResult;

    .line 1277
    .local v25, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;

    move-result-object v24

    .line 1279
    .local v24, queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    if-eqz v25, :cond_0

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    sget-object v33, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryHist:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual/range {v32 .. v33}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 1285
    const v32, 0x7f0e0065

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    .line 1287
    .local v26, queryResultListView:Landroid/widget/ListView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 1290
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 1293
    if-eqz v24, :cond_0

    sget-object v32, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryHist:Lcom/wolfram/alpha/WAQuery;

    invoke-interface/range {v32 .. v32}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_0

    .line 1294
    sget-object v32, Lcom/wolfram/android/alpha/activity/HistoryActivity;->queryHist:Lcom/wolfram/alpha/WAQuery;

    invoke-interface/range {v32 .. v32}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    invoke-virtual/range {v24 .. v24}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    goto/16 :goto_0

    .line 1306
    .end local v24           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    .end local v25           #queryResult:Lcom/wolfram/alpha/WAQueryResult;
    .end local v26           #queryResultListView:Landroid/widget/ListView;
    .restart local p0
    :cond_b
    const/16 v32, 0x2b

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 1308
    const/16 v32, -0x1

    move/from16 v0, p2

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1310
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 1312
    const-string v32, "com.wolfram.android.alpha.examples_input"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1315
    .restart local v15       #input:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v20

    .line 1317
    .restart local v20       #newQuery:Lcom/wolfram/alpha/WAQuery;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    goto/16 :goto_0

    .line 1321
    .end local v15           #input:Ljava/lang/String;
    .end local v20           #newQuery:Lcom/wolfram/alpha/WAQuery;
    :cond_c
    const/16 v32, 0x2d

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 1323
    const/16 v32, -0x1

    move/from16 v0, p2

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 1327
    const-string v32, "com.wolfram.android.alpha.favorites_input"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1330
    .restart local v15       #input:Ljava/lang/String;
    const-string v32, "com.wolframalpha.help"

    move-object v0, v15

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1332
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->comwolframalpha()Z

    goto/16 :goto_0

    .line 1338
    :cond_d
    const-string v32, "com.wolfram.android.alpha.favorites_assumptions"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1341
    .local v8, assumptions:[Ljava/lang/String;
    const-string v32, "com.wolfram.android.alpha.favorites_podstates_inputs"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1344
    .local v23, podStateInputs:[Ljava/lang/String;
    const-string v32, "com.wolfram.android.alpha.favorites_podstates_ids"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v22

    .line 1347
    .local v22, podStateIDs:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v32

    move-object/from16 v0, v32

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v20

    .line 1349
    .restart local v20       #newQuery:Lcom/wolfram/alpha/WAQuery;
    move-object v5, v8

    .local v5, arr$:[Ljava/lang/String;
    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_6
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget-object v4, v5, v14

    .line 1351
    .local v4, a:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/WAQuery;->addAssumption(Ljava/lang/String;)V

    .line 1349
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1353
    .end local v4           #a:Ljava/lang/String;
    :cond_e
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    move v0, v13

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 1355
    aget-object v32, v23, v13

    aget-wide v33, v22, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-interface {v0, v1, v2, v3}, Lcom/wolfram/alpha/WAQuery;->addPodState(Ljava/lang/String;J)V

    .line 1353
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1357
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    goto/16 :goto_0

    .line 1363
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #assumptions:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #i$:I
    .end local v15           #input:Ljava/lang/String;
    .end local v18           #len$:I
    .end local v20           #newQuery:Lcom/wolfram/alpha/WAQuery;
    .end local v22           #podStateIDs:[J
    .end local v23           #podStateInputs:[Ljava/lang/String;
    :cond_10
    const/16 v32, 0x2e

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 1365
    const/16 v32, -0x1

    move/from16 v0, p2

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1370
    const-string v32, "android.speech.extra.RESULTS"

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1373
    .local v19, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_0

    .line 1375
    const/16 v32, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1379
    .local v30, text:Ljava/lang/String;
    const v32, 0x7f0e005d

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;

    .line 1381
    .local v17, kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;
    if-eqz v17, :cond_0

    .line 1383
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1389
    .end local v17           #kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;
    .end local v19           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30           #text:Ljava/lang/String;
    :cond_11
    const/16 v32, 0x2f

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    .line 1402
    const/4 v10, 0x0

    .line 1404
    .local v10, canHandleHTML:Z
    const/16 v16, 0x0

    .line 1418
    .local v16, isTwitter:Z
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 1420
    .local v21, origActivityName:Ljava/lang/String;
    new-instance v29, Landroid/content/Intent;

    const-string v32, "android.intent.action.SEND"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v29, testIntent:Landroid/content/Intent;
    const-string v32, "text/html"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const/high16 v33, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    .line 1428
    .local v27, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ResolveInfo;

    .line 1430
    .local v28, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1432
    const/4 v10, 0x1

    .line 1445
    .end local v28           #ri:Landroid/content/pm/ResolveInfo;
    :cond_13
    const-string v32, "twitter"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_15

    .line 1447
    const/16 v16, 0x1

    .line 1475
    :cond_14
    :goto_8
    if-eqz v10, :cond_17

    .line 1477
    const-string v32, "android.intent.extra.TEXT"

    const-string v33, "html"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1490
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1451
    :cond_15
    const-string v32, "application/twitter"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const/high16 v33, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    .line 1456
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_16
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ResolveInfo;

    .line 1458
    .restart local v28       #ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 1460
    const/16 v16, 0x1

    .line 1462
    goto :goto_8

    .line 1480
    .end local v28           #ri:Landroid/content/pm/ResolveInfo;
    :cond_17
    if-eqz v16, :cond_18

    .line 1482
    const-string v32, "android.intent.extra.TEXT"

    const-string v33, "twitter"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 1486
    :cond_18
    const-string v32, "android.intent.extra.TEXT"

    const-string v33, "text"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 1492
    .end local v10           #canHandleHTML:Z
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #isTwitter:Z
    .end local v21           #origActivityName:Ljava/lang/String;
    .end local v27           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v29           #testIntent:Landroid/content/Intent;
    :cond_19
    const/16 v32, 0x7f99

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1494
    const/16 v32, -0x1

    move/from16 v0, p2

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->postFeedonFacebook()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const v10, 0x7f0e0063

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 810
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 812
    const v6, 0x7f0e0065

    invoke-virtual {p0, v6}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/wolfram/android/alpha/view/QueryResultView;

    .line 814
    .local v5, queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;
    invoke-virtual {v5}, Lcom/wolfram/android/alpha/view/QueryResultView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/wolfram/android/alpha/QueryResultAdapter;

    invoke-virtual {v6}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 820
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isAutoRotate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 821
    invoke-virtual {p0, v8}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setRequestedOrientation(I)V

    .line 823
    :cond_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDimensions()[I

    move-result-object v6

    aget v6, v6, v8

    const/16 v7, 0x14a

    if-ge v6, v7, :cond_7

    move v3, v8

    .line 826
    .local v3, isSmallScreen:Z
    :goto_0
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    move v2, v8

    .line 831
    .local v2, isLandscape:Z
    :goto_1
    const v6, 0x7f0d0002

    new-array v7, v8, [I

    const v8, 0x10100f5

    aput v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 834
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 836
    .local v1, height:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 838
    if-eqz v1, :cond_1

    .line 840
    invoke-virtual {p0, v10}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findWAKeyboard()Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-result-object v4

    .line 844
    .local v4, keyboardView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 851
    :cond_2
    invoke-virtual {p0, v10}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 855
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    .line 858
    if-eqz v4, :cond_6

    .line 862
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 864
    :cond_4
    invoke-virtual {p0, v10}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 868
    :cond_5
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 870
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->showWAKeyboard()V

    .line 874
    :cond_6
    return-void

    .end local v0           #attributes:Landroid/content/res/TypedArray;
    .end local v1           #height:I
    .end local v2           #isLandscape:Z
    .end local v3           #isSmallScreen:Z
    .end local v4           #keyboardView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;
    :cond_7
    move v3, v9

    .line 823
    goto :goto_0

    .restart local v3       #isSmallScreen:Z
    :cond_8
    move v2, v9

    .line 826
    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 20
    .parameter "item"

    .prologue
    .line 2914
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    .line 3201
    .end local p1
    :goto_0
    const/16 v16, 0x1

    return v16

    .line 2918
    .restart local p1
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 2920
    .local v15, view:Lcom/wolfram/android/alpha/view/SubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->text:Lcom/wolfram/alpha/WAPlainText;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAPlainText;->getText()Ljava/lang/String;

    move-result-object v14

    .line 2922
    .local v14, text:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setQueryInputText(Ljava/lang/String;)V

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v13

    .line 2926
    .local v13, query:Lcom/wolfram/alpha/WAQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQuery(Lcom/wolfram/alpha/WAQuery;)V

    goto :goto_0

    .line 2934
    .end local v13           #query:Lcom/wolfram/alpha/WAQuery;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #view:Lcom/wolfram/android/alpha/view/SubpodView;
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 2936
    .restart local v15       #view:Lcom/wolfram/android/alpha/view/SubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->text:Lcom/wolfram/alpha/WAPlainText;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAPlainText;->getText()Ljava/lang/String;

    move-result-object v14

    .line 2938
    .restart local v14       #text:Ljava/lang/String;
    const-string v16, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/ClipboardManager;

    .line 2940
    .local v5, clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v5, v14}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2948
    .end local v5           #clipboard:Landroid/text/ClipboardManager;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #view:Lcom/wolfram/android/alpha/view/SubpodView;
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 2950
    .restart local v15       #view:Lcom/wolfram/android/alpha/view/SubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->mInput:Lcom/wolfram/alpha/WAMathematicaInput;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAMathematicaInput;->getMinput()Ljava/lang/String;

    move-result-object v14

    .line 2952
    .restart local v14       #text:Ljava/lang/String;
    const-string v16, "clipboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/ClipboardManager;

    .line 2954
    .restart local v5       #clipboard:Landroid/text/ClipboardManager;
    invoke-virtual {v5, v14}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2967
    .end local v5           #clipboard:Landroid/text/ClipboardManager;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #view:Lcom/wolfram/android/alpha/view/SubpodView;
    :pswitch_3
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mPrefs:Landroid/content/SharedPreferences;

    .line 2969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "access_token"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2971
    .local v4, access_token:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    const-string v17, "access_expires"

    const-wide/16 v18, 0x0

    invoke-interface/range {v16 .. v19}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 2973
    .local v7, expires:J
    if-eqz v4, :cond_0

    .line 2975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 2979
    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_1

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 2990
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v16

    if-nez v16, :cond_2

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "publish_stream"

    aput-object v19, v17, v18

    new-instance v18, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto/16 :goto_0

    .line 3024
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->postFeedonFacebook()V

    goto/16 :goto_0

    .line 3034
    .end local v4           #access_token:Ljava/lang/String;
    .end local v7           #expires:J
    :pswitch_4
    const/4 v10, 0x0

    .line 3036
    .local v10, imageFile:Ljava/io/File;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 3038
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 3040
    .restart local v15       #view:Lcom/wolfram/android/alpha/view/SubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v10

    .line 3051
    .end local v15           #view:Lcom/wolfram/android/alpha/view/SubpodView;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    .line 3056
    .local v9, fileSavedToPublicArea:Ljava/io/File;
    const/4 v12, 0x0

    .line 3060
    .local v12, msg:Ljava/lang/String;
    if-eqz v10, :cond_7

    .line 3064
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 3065
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Lcom/wolfram/android/alpha/view/SubpodView;

    move-object v0, v4

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/view/SubpodView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/wolfram/alpha/WASubpod;->getTitle()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->saveImageToPublicArea(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 3095
    :cond_4
    :goto_2
    if-nez v12, :cond_8

    .line 3100
    new-instance v11, Landroid/content/Intent;

    const-string v16, "android.intent.action.SEND"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3110
    .local v11, intent:Landroid/content/Intent;
    const-string v16, "android.intent.extra.STREAM"

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3113
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "image/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getImageFormat()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3115
    new-instance v16, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v17, 0x7f0c002e

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3042
    .end local v9           #fileSavedToPublicArea:Ljava/io/File;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #msg:Ljava/lang/String;
    .restart local p1
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 3044
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    .line 3047
    .local v15, view:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v10

    goto/16 :goto_1

    .line 3071
    .end local v15           #view:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    .restart local v9       #fileSavedToPublicArea:Ljava/io/File;
    .restart local v12       #msg:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 3072
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->banner:Lcom/wolfram/alpha/WABanner;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WABanner;->getWeatherBannerTitle()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->saveImageToPublicArea(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_2

    .line 3077
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 3079
    .local v6, e:Ljava/io/IOException;
    new-instance v16, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v17, 0x7f0c0030

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3084
    goto/16 :goto_2

    .line 3088
    .end local v6           #e:Ljava/io/IOException;
    .restart local p1
    :cond_7
    new-instance v16, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v17, 0x7f0c002f

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 3123
    .end local p1
    :cond_8
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3133
    .end local v9           #fileSavedToPublicArea:Ljava/io/File;
    .end local v10           #imageFile:Ljava/io/File;
    .end local v12           #msg:Ljava/lang/String;
    .restart local p1
    :pswitch_5
    const/4 v10, 0x0

    .line 3135
    .restart local v10       #imageFile:Ljava/io/File;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 3137
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 3139
    .local v15, view:Lcom/wolfram/android/alpha/view/SubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v10

    .line 3150
    .end local v15           #view:Lcom/wolfram/android/alpha/view/SubpodView;
    :cond_9
    :goto_3
    new-instance v16, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v17, 0x7f0c0031

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3155
    .restart local v12       #msg:Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 3159
    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 3160
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Lcom/wolfram/android/alpha/view/SubpodView;

    move-object v0, v4

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/view/SubpodView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/wolfram/alpha/WASubpod;->getTitle()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->saveImageToPublicArea(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3189
    :cond_a
    :goto_4
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3141
    .end local v12           #msg:Ljava/lang/String;
    .restart local p1
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 3143
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v15

    check-cast v15, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    .line 3146
    .local v15, view:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    move-object v0, v15

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v10

    goto/16 :goto_3

    .line 3165
    .end local v15           #view:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    .restart local v12       #msg:Ljava/lang/String;
    :cond_c
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 3166
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->banner:Lcom/wolfram/alpha/WABanner;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WABanner;->getWeatherBannerTitle()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->saveImageToPublicArea(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 3171
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 3173
    .restart local v6       #e:Ljava/io/IOException;
    new-instance v16, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v17, 0x7f0c0030

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3178
    goto :goto_4

    .line 3182
    .end local v6           #e:Ljava/io/IOException;
    .restart local p1
    :cond_d
    new-instance v16, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v17, 0x7f0c002f

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 2914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super/range {p0 .. p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getApplication()Landroid/app/Application;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 175
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v13

    if-eqz v13, :cond_5

    const v13, 0x7f03005e

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setContentView(I)V

    .line 179
    :goto_1
    const v13, 0x7f0e0059

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->instantmath_view:Landroid/widget/TextView;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    sget-object v14, Lcom/wolfram/android/alpha/activity/WolframAlpha;->instantmath_view:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setInstantmath_view(Landroid/widget/TextView;)V

    .line 183
    const v13, 0x7f0e0066

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    sput-object p1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    .line 184
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    new-instance v14, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;

    sget-object v15, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 186
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pod_docked_title_bar_listview:Landroid/widget/ListView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setVisibility(I)V

    .line 188
    const/4 v6, 0x0

    .line 190
    .local v6, queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v13

    const v14, 0x7f030072

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 192
    .local v12, view:Landroid/view/View;
    const v13, 0x7f0e007f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    check-cast v6, Lcom/wolfram/android/alpha/view/QueryInputView;

    .line 193
    .restart local v6       #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    const v13, 0x7f0e0062

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 194
    .local v4, ll:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v5, llp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v12, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    const/4 v13, 0x2

    invoke-virtual {v4, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 201
    .end local v4           #ll:Landroid/widget/LinearLayout;
    .end local v5           #llp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #view:Landroid/view/View;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->readInstanceState()Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;

    move-result-object v10

    .line 203
    .local v10, state:Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;
    if-eqz v10, :cond_2

    .line 204
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->isRestore:Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    iget-object v14, v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-virtual {v13, v14}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 206
    const v13, 0x7f0e0065

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 207
    .local v7, queryResultListView:Landroid/widget/ListView;
    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/wolfram/android/alpha/QueryResultAdapter;

    iget-object v13, v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v13

    if-nez v13, :cond_1

    .line 210
    move-object v0, v7

    check-cast v0, Lcom/wolfram/android/alpha/view/QueryResultView;

    move-object v8, v0

    .line 211
    .local v8, queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;
    invoke-virtual {v8}, Lcom/wolfram/android/alpha/view/QueryResultView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, firstRow:Landroid/view/View;
    const v13, 0x7f0e007f

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    check-cast v6, Lcom/wolfram/android/alpha/view/QueryInputView;

    .line 215
    .end local v3           #firstRow:Landroid/view/View;
    .end local v8           #queryResultsView:Lcom/wolfram/android/alpha/view/QueryResultView;
    .restart local v6       #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    :cond_1
    if-eqz v6, :cond_2

    iget-object v13, v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->query:Lcom/wolfram/alpha/WAQuery;

    if-eqz v13, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    iget-object v14, v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-virtual {v13, v14}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 217
    iget-object v13, v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;->query:Lcom/wolfram/alpha/WAQuery;

    invoke-interface {v13}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/wolfram/android/alpha/view/QueryInputView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v6}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    .line 224
    .end local v7           #queryResultListView:Landroid/widget/ListView;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getIntent()Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->handleIntent(Landroid/content/Intent;)V

    .line 232
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x8

    if-lt v13, v14, :cond_3

    .line 236
    :try_start_0
    const-class v13, Landroid/widget/ListView;

    const-string v14, "smoothScrollToPosition"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 237
    .local v9, smoothScrollMethod:Ljava/lang/reflect/Method;
    const v13, 0x7f0e0063

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 238
    .local v11, titleView:Landroid/view/View;
    new-instance v13, Lcom/wolfram/android/alpha/activity/WolframAlpha$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$1;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Ljava/lang/reflect/Method;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v9           #smoothScrollMethod:Ljava/lang/reflect/Method;
    .end local v11           #titleView:Landroid/view/View;
    :cond_3
    :goto_2
    return-void

    .line 172
    .end local v6           #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    .end local v10           #state:Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x25

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 176
    :cond_5
    const v13, 0x7f03005d

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setContentView(I)V

    goto/16 :goto_1

    .line 253
    .restart local v6       #queryInputField:Lcom/wolfram/android/alpha/view/QueryInputView;
    .restart local v10       #state:Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2826
    invoke-super {p0, p1, p2, p3}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2828
    instance-of v8, p2, Lcom/wolfram/android/alpha/view/SubpodView;

    if-eqz v8, :cond_3

    .line 2830
    move-object v0, p2

    check-cast v0, Lcom/wolfram/android/alpha/view/SubpodView;

    move-object v5, v0

    .line 2832
    .local v5, subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    iget-object v6, v5, Lcom/wolfram/android/alpha/view/SubpodView;->text:Lcom/wolfram/alpha/WAPlainText;

    .line 2834
    .local v6, text:Lcom/wolfram/alpha/WAPlainText;
    iget-object v1, v5, Lcom/wolfram/android/alpha/view/SubpodView;->image:Lcom/wolfram/alpha/WAImage;

    .line 2836
    .local v1, image:Lcom/wolfram/alpha/WAImage;
    iget-object v2, v5, Lcom/wolfram/android/alpha/view/SubpodView;->mInput:Lcom/wolfram/alpha/WAMathematicaInput;

    .line 2838
    .local v2, mInput:Lcom/wolfram/alpha/WAMathematicaInput;
    const/4 v3, 0x0

    .line 2840
    .local v3, menuIndex:I
    if-eqz v6, :cond_0

    const-string v8, ""

    invoke-interface {v6}, Lcom/wolfram/alpha/WAPlainText;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2842
    const/4 v8, 0x0

    const/4 v9, 0x1

    add-int/lit8 v4, v3, 0x1

    .end local v3           #menuIndex:I
    .local v4, menuIndex:I
    const v10, 0x7f0c0027

    invoke-interface {p1, v8, v9, v3, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2845
    const/4 v8, 0x0

    const/4 v9, 0x2

    add-int/lit8 v3, v4, 0x1

    .end local v4           #menuIndex:I
    .restart local v3       #menuIndex:I
    const v10, 0x7f0c0028

    invoke-interface {p1, v8, v9, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    move v4, v3

    .line 2850
    .end local v3           #menuIndex:I
    .restart local v4       #menuIndex:I
    if-eqz v2, :cond_4

    const-string v8, ""

    invoke-interface {v2}, Lcom/wolfram/alpha/WAMathematicaInput;->getMinput()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2852
    const/4 v8, 0x0

    const/4 v9, 0x3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #menuIndex:I
    .restart local v3       #menuIndex:I
    const v10, 0x7f0c0029

    invoke-interface {p1, v8, v9, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2856
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #menuIndex:I
    .restart local v4       #menuIndex:I
    const v10, 0x7f0c002a

    invoke-interface {p1, v8, v9, v3, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2859
    if-eqz v1, :cond_1

    .line 2861
    const/4 v8, 0x0

    const/4 v9, 0x5

    add-int/lit8 v3, v4, 0x1

    .end local v4           #menuIndex:I
    .restart local v3       #menuIndex:I
    const v10, 0x7f0c002b

    invoke-interface {p1, v8, v9, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2864
    const/4 v8, 0x0

    const/4 v9, 0x6

    add-int/lit8 v4, v3, 0x1

    .end local v3           #menuIndex:I
    .restart local v4       #menuIndex:I
    const v10, 0x7f0c002c

    invoke-interface {p1, v8, v9, v3, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    move v3, v4

    .line 2898
    .end local v1           #image:Lcom/wolfram/alpha/WAImage;
    .end local v2           #mInput:Lcom/wolfram/alpha/WAMathematicaInput;
    .end local v4           #menuIndex:I
    .end local v5           #subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    .end local v6           #text:Lcom/wolfram/alpha/WAPlainText;
    :cond_2
    :goto_1
    return-void

    .line 2875
    :cond_3
    instance-of v8, p2, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    if-eqz v8, :cond_2

    .line 2877
    move-object v0, p2

    check-cast v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    move-object v7, v0

    .line 2879
    .local v7, weatherBannerSubpodView:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    iget-object v1, v7, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    .line 2881
    .restart local v1       #image:Lcom/wolfram/alpha/WAImage;
    const/4 v3, 0x0

    .line 2883
    .restart local v3       #menuIndex:I
    const/4 v8, 0x0

    const/4 v9, 0x4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #menuIndex:I
    .restart local v4       #menuIndex:I
    const v10, 0x7f0c002a

    invoke-interface {p1, v8, v9, v3, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2886
    if-eqz v1, :cond_2

    .line 2888
    const/4 v8, 0x0

    const/4 v9, 0x5

    add-int/lit8 v3, v4, 0x1

    .end local v4           #menuIndex:I
    .restart local v3       #menuIndex:I
    const v10, 0x7f0c002b

    invoke-interface {p1, v8, v9, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2891
    const/4 v8, 0x0

    const/4 v9, 0x6

    add-int/lit8 v4, v3, 0x1

    .end local v3           #menuIndex:I
    .restart local v4       #menuIndex:I
    const v10, 0x7f0c002c

    invoke-interface {p1, v8, v9, v3, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .end local v7           #weatherBannerSubpodView:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    .restart local v2       #mInput:Lcom/wolfram/alpha/WAMathematicaInput;
    .restart local v5       #subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    .restart local v6       #text:Lcom/wolfram/alpha/WAPlainText;
    :cond_4
    move v3, v4

    .end local v4           #menuIndex:I
    .restart local v3       #menuIndex:I
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2545
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2547
    const/4 v0, 0x2

    const v1, 0x7f0c0076

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2552
    const/4 v0, 0x3

    const v1, 0x7f0c0077

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020086

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2557
    const/4 v0, 0x4

    const v1, 0x7f0c0078

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2562
    const/4 v0, 0x5

    const v1, 0x7f0c007b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2566
    const/4 v0, 0x6

    const v1, 0x7f0c007a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2571
    const/16 v0, 0x8

    const v1, 0x7f0c007c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2576
    const/4 v0, 0x7

    const v1, 0x7f0c0079

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080057

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2580
    const v0, 0x7f0c0075

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2584
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 755
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onDestroy()V

    .line 757
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 759
    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "e"

    .prologue
    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    move-object v0, v3

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/SubpodView;->imageView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 3491
    .local v17, imageView:Landroid/widget/ImageView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    .line 3493
    .local v16, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 3495
    .local v15, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDimensions()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v19, v3, v4

    .line 3499
    .local v19, screen_width:I
    new-instance v3, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/Resources_modified;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v4

    iget v4, v4, Lcom/wolfram/android/alpha/view/SubpodView;->original_configuration:I

    if-ne v3, v4, :cond_5

    .line 3501
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v4

    iget v4, v4, Lcom/wolfram/android/alpha/view/SubpodView;->original_size:I

    if-ne v3, v4, :cond_2

    .line 3503
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 3507
    .local v8, scaleFactor:F
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    float-to-int v3, v3

    const/4 v4, 0x7

    sub-int/2addr v3, v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v15, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 3509
    .local v18, image_Bitmap_resized:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMapFlag:Z

    if-eqz v3, :cond_1

    .line 3510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/view/SubpodView;->removeImageMapElements()V

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible:Z

    if-eqz v3, :cond_0

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v4

    iget-object v4, v4, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v5

    iget-object v5, v5, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v6

    iget-object v6, v6, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/wolfram/android/alpha/view/SubpodView;->populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V

    .line 3513
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible_OneClick:Z

    if-eqz v3, :cond_1

    .line 3514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v4

    iget-object v4, v4, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v5

    iget-object v5, v5, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v6

    iget-object v6, v6, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/wolfram/android/alpha/view/SubpodView;->populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V

    .line 3516
    :cond_1
    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    iget-object v3, v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v4

    iget-object v4, v4, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->position_in_pod:I

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, p1

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3531
    .end local v8           #scaleFactor:F
    .end local v18           #image_Bitmap_resized:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x1

    .line 3534
    :goto_1
    return v3

    .line 3521
    .restart local p1
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMapFlag:Z

    if-eqz v3, :cond_4

    .line 3522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/view/SubpodView;->removeImageMapElements()V

    .line 3523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible:Z

    if-eqz v3, :cond_3

    .line 3524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v10, v3, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v11, v3, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v12, v3, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    invoke-virtual/range {v9 .. v14}, Lcom/wolfram/android/alpha/view/SubpodView;->populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V

    .line 3525
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->isImageMapElementsVisible_OneClick:Z

    if-eqz v3, :cond_4

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v10, v3, Lcom/wolfram/android/alpha/view/SubpodView;->subpod:Lcom/wolfram/alpha/WASubpod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v11, v3, Lcom/wolfram/android/alpha/view/SubpodView;->podTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v12, v3, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    const/4 v13, 0x1

    const/high16 v14, 0x3f80

    invoke-virtual/range {v9 .. v14}, Lcom/wolfram/android/alpha/view/SubpodView;->populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V

    .line 3528
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget-object v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->bmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    iget-object v3, v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v4

    iget-object v4, v4, Lcom/wolfram/android/alpha/view/SubpodView;->podID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;

    move-result-object v3

    iget v3, v3, Lcom/wolfram/android/alpha/view/SubpodView;->position_in_pod:I

    const/high16 v4, 0x3f80

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, p1

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3534
    .restart local p1
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3542
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3560
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3570
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "queryInputField"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 920
    const/16 v3, 0x42

    if-ne p2, v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 923
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, queryString:Ljava/lang/String;
    const-string v3, "com.wolframalpha.help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFavorites()Lcom/wolfram/android/alpha/Favorites;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wolfram/android/alpha/Favorites;->add(Ljava/lang/String;)V

    .line 935
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->comwolframalpha()Z

    move v3, v4

    .line 992
    .end local v2           #queryString:Ljava/lang/String;
    .end local p1
    :goto_0
    return v3

    .line 941
    .restart local v2       #queryString:Ljava/lang/String;
    .restart local p1
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 946
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 951
    check-cast p1, Lcom/wolfram/android/alpha/view/QueryInputView;

    .end local p1
    invoke-virtual {p1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    .line 953
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    .line 960
    .local v1, query:Lcom/wolfram/alpha/WAQuery;
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->location_dialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->location_dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->location_dialog:Landroid/app/Dialog;

    if-nez v3, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .end local v1           #query:Lcom/wolfram/alpha/WAQuery;
    :cond_3
    move v3, v4

    .line 964
    goto :goto_0

    .line 968
    .end local v2           #queryString:Ljava/lang/String;
    .restart local p1
    :cond_4
    const/4 v3, 0x4

    if-ne p2, v3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    .line 971
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findWAKeyboard()Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 973
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 978
    check-cast p1, Lcom/wolfram/android/alpha/view/QueryInputView;

    .end local p1
    invoke-virtual {p1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setComputeIcon()V

    move v3, v4

    .line 980
    goto :goto_0

    .restart local p1
    :cond_5
    move v3, v5

    .line 986
    goto :goto_0

    :cond_6
    move v3, v5

    .line 992
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3578
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onNewIntent(Landroid/content/Intent;)V

    .line 508
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setIntent(Landroid/content/Intent;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->handleIntent(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2615
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2676
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2619
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/PrefsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 2621
    goto :goto_0

    .line 2625
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 2627
    goto :goto_0

    .line 2631
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 2634
    goto :goto_0

    .line 2638
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/FavoritesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2d

    invoke-virtual {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 2641
    goto :goto_0

    .line 2645
    :pswitch_4
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFavorites()Lcom/wolfram/android/alpha/Favorites;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Favorites;->add(Lcom/wolfram/alpha/WAQuery;)V

    :cond_0
    move v0, v2

    .line 2649
    goto :goto_0

    .line 2655
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/ExamplesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v2

    .line 2658
    goto :goto_0

    .line 2662
    :pswitch_6
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->onSearchRequested()Z

    move-result v0

    goto :goto_0

    .line 2666
    :pswitch_7
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2667
    sget-object v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->pickIntent:Landroid/content/Intent;

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    move v0, v2

    .line 2670
    goto :goto_0

    .line 2615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 692
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onPause()V

    .line 697
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    invoke-interface {v0}, Lcom/wolfram/alpha/WAQuery;->getGeneralizationInput()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    invoke-interface {v1}, Lcom/wolfram/alpha/WAQuery;->getGeneralizationInput()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/WAQuery;->setInput(Ljava/lang/String;)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getHistory()Lcom/wolfram/android/alpha/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/History;->writeTodaysHistory()V

    .line 707
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFavorites()Lcom/wolfram/android/alpha/Favorites;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/Favorites;->write()V

    .line 709
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->pauseLocationUpdates()V

    .line 711
    new-instance v0, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;-><init>(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/alpha/WAQueryResult;)V

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->writeInstanceState(Lcom/wolfram/android/alpha/activity/WolframAlpha$InstanceState;)V

    .line 714
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2591
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2595
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 2597
    .local v0, queryNotEmpty:Z
    :goto_0
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2599
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->share_Menu_Intent_exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2608
    return v3

    .end local v0           #queryNotEmpty:Z
    :cond_0
    move v0, v4

    .line 2595
    goto :goto_0

    .restart local v0       #queryNotEmpty:Z
    :cond_1
    move v2, v4

    .line 2599
    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 719
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onResume()V

    .line 721
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->resumeLocationUpdates()V

    .line 723
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboardChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 738
    :goto_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 740
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->showWAKeyboard()V

    .line 742
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setUseCustomKeyboard(Z)V

    .line 746
    :cond_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 884
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3586
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 900
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    .line 909
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3594
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3550
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3600
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 764
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onWindowFocusChanged(Z)V

    .line 781
    if-eqz p1, :cond_1

    .line 783
    const v2, 0x7f0e0065

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 785
    .local v1, queryResultsView:Landroid/widget/ListView;
    const v2, 0x7f0e007f

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 787
    .local v0, queryInputView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 789
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->showWAKeyboard()V

    .line 796
    :cond_0
    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 802
    .end local v0           #queryInputView:Landroid/widget/TextView;
    .end local v1           #queryResultsView:Landroid/widget/ListView;
    :cond_1
    return-void
.end method

.method public reinterpretClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "reintrepretButton"

    .prologue
    .line 2119
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2121
    .local v1, queryText:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setQueryInputText(Ljava/lang/String;)V

    .line 2123
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 2125
    .local v0, query:Lcom/wolfram/alpha/WAQuery;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 2127
    return-void
.end method

.method public relatedExampleCategoryClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter "thumbImage"

    .prologue
    .line 1995
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2000
    .local v0, category:Ljava/lang/String;
    return-void
.end method

.method public relatedExampleClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "linkButton"

    .prologue
    .line 2004
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2006
    .local v1, re:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setQueryInputText(Ljava/lang/String;)V

    .line 2008
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 2010
    .local v0, query:Lcom/wolfram/alpha/WAQuery;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 2012
    return-void
.end method

.method public relatedquery_clickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "related_query_button"

    .prologue
    .line 1954
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1956
    .local v1, query_input:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->setQueryInputText(Ljava/lang/String;)V

    .line 1958
    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 1960
    .local v0, query:Lcom/wolfram/alpha/WAQuery;
    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;)V

    .line 1962
    return-void
.end method

.method public resultsFooterClickHandler(Landroid/view/View;)V
    .locals 18
    .parameter "footerButton"

    .prologue
    .line 1813
    const v13, 0x7f080004

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1816
    .local v12, viewType:Ljava/lang/Integer;
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_SEARCH_WEB:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v8

    .line 1822
    .local v8, query:Lcom/wolfram/alpha/WAQuery;
    if-nez v8, :cond_1

    .line 1946
    .end local v8           #query:Lcom/wolfram/alpha/WAQuery;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1826
    .restart local v8       #query:Lcom/wolfram/alpha/WAQuery;
    .restart local p1
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1830
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "com.wolfram.android.alpha.webview.title"

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1833
    const-string v13, "com.wolfram.android.alpha.webview.url"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http://www.google.com/m/search?q="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1835
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1837
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #query:Lcom/wolfram/alpha/WAQuery;
    .restart local p1
    :cond_2
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_SOURCE_INFORMATION:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v9

    .line 1841
    .local v9, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    if-eqz v9, :cond_0

    .line 1845
    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getSources()[Lcom/wolfram/alpha/WASourceInfo;

    move-result-object v11

    .line 1847
    .local v11, sources:[Lcom/wolfram/alpha/WASourceInfo;
    array-length v13, v11

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1849
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1851
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v13, "com.wolfram.android.alpha.webview.title"

    new-instance v14, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v15, 0x7f0c004f

    invoke-virtual {v14, v15}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1858
    const-string v13, "com.wolfram.android.alpha.webview.url"

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-interface {v14}, Lcom/wolfram/alpha/WASourceInfo;->getFormattedURL_anotherVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1860
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1864
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1867
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1871
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #queryResult:Lcom/wolfram/alpha/WAQueryResult;
    .end local v11           #sources:[Lcom/wolfram/alpha/WASourceInfo;
    :cond_4
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_RELATED_LINKS:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1873
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1875
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1877
    .end local v6           #intent:Landroid/content/Intent;
    :cond_5
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_GIVE_FEEDBACK:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1886
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    const/4 v13, -0x1

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1888
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 1891
    .local v3, UIhandler:Landroid/os/Handler;
    new-instance v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$5;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V

    .line 1902
    .local v10, runnable_changecolor:Ljava/lang/Runnable;
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/wolfram/android/alpha/activity/FeedbackActivity;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1904
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1906
    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1908
    .end local v3           #UIhandler:Landroid/os/Handler;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #runnable_changecolor:Ljava/lang/Runnable;
    :cond_6
    sget-object v13, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_RECOMMEND_THIS_APP:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1914
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    const/4 v13, -0x1

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1916
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 1918
    .restart local v3       #UIhandler:Landroid/os/Handler;
    new-instance v10, Lcom/wolfram/android/alpha/activity/WolframAlpha$6;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$6;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V

    .line 1926
    .restart local v10       #runnable_changecolor:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1927
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1928
    .local v7, marketIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1942
    .end local v7           #marketIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1931
    :cond_7
    new-instance v13, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v14, "Please connect to internet and try again."

    invoke-virtual {v13, v14}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v13

    const-string v14, "OK"

    new-instance v15, Lcom/wolfram/android/alpha/activity/WolframAlpha$7;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$7;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    invoke-virtual {v13, v14, v15}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v13

    const-string v14, "No Internet Connection"

    invoke-virtual {v13, v14}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v4

    .line 1939
    .local v4, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v5

    .line 1940
    .local v5, dialog:Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method public showWAKeyboard()V
    .locals 22

    .prologue
    .line 2332
    const v4, 0x7f0e0064

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 2334
    .local v12, contentView:Landroid/widget/RelativeLayout;
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getQueryInputView()Lcom/wolfram/android/alpha/view/QueryInputView;

    move-result-object v20

    .line 2336
    .local v20, queryInputView:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2343
    const-string v4, "input_method"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 2345
    .local v14, imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2366
    .end local v14           #imManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 2368
    invoke-static/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->createFromXML(Landroid/content/Context;)Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    .line 2373
    if-eqz v20, :cond_1

    .line 2375
    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int v18, v4, v5

    .line 2378
    .local v18, maxKeyboardHeightInPixels:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->initialize(I)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->setTargetView(Landroid/view/View;)V

    .line 2386
    .end local v18           #maxKeyboardHeightInPixels:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findWAKeyboard()Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->resetKeyboard()V

    .line 2395
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDimensions()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    const/16 v5, 0x14a

    if-ge v4, v5, :cond_7

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 2398
    .local v17, isSmallScreen:Z
    :goto_0
    new-instance v4, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/Resources_modified;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    move v15, v4

    .line 2402
    .local v15, isLandscape:Z
    :goto_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeDevice()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDimensions()[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    const/16 v5, 0x258

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 2407
    .local v16, isLargeScreen:Z
    :goto_2
    if-eqz v15, :cond_2

    if-eqz v16, :cond_3

    :cond_2
    if-eqz v17, :cond_4

    .line 2409
    :cond_3
    const v4, 0x7f0e0063

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    :cond_4
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v19

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2416
    .local v19, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2418
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    move v1, v4

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2420
    .local v21, set:Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f80

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2430
    .local v3, animation:Landroid/view/animation/Animation;
    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2432
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2434
    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2436
    new-instance v13, Landroid/view/animation/LayoutAnimationController;

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, v21

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 2439
    .local v13, controller:Landroid/view/animation/LayoutAnimationController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->kbView:Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    move-object v4, v0

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2450
    .end local v3           #animation:Landroid/view/animation/Animation;
    .end local v13           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v15           #isLandscape:Z
    .end local v16           #isLargeScreen:Z
    .end local v17           #isSmallScreen:Z
    .end local v19           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21           #set:Landroid/view/animation/AnimationSet;
    :cond_5
    :goto_3
    return-void

    .line 2353
    :cond_6
    const-string v4, "input_method"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 2355
    .restart local v14       #imManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, v20

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_3

    .line 2395
    .end local v14           #imManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_0

    .line 2398
    .restart local v17       #isSmallScreen:Z
    :cond_8
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_1

    .line 2402
    .restart local v15       #isLandscape:Z
    :cond_9
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_2
.end method

.method public singleInfoClickHandler(Landroid/view/View;)V
    .locals 5
    .parameter "infoButton"

    .prologue
    .line 1705
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wolfram/alpha/WALink;

    .line 1707
    .local v2, link:Lcom/wolfram/alpha/WALink;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1709
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1711
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "com.wolfram.android.alpha.webview.title"

    invoke-interface {v2}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v3, "com.wolfram.android.alpha.webview.url"

    invoke-interface {v2}, Lcom/wolfram/alpha/WALink;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1717
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 1719
    return-void
.end method

.method public soundClickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "audioButton"

    .prologue
    const v6, 0x7f0200a1

    .line 2016
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2018
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/wolfram/alpha/WASound;

    if-eqz v5, :cond_0

    .line 2020
    move-object v0, v4

    check-cast v0, Lcom/wolfram/alpha/WASound;

    move-object v3, v0

    .line 2022
    .local v3, sound:Lcom/wolfram/alpha/WASound;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 2035
    .local v2, mp:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-interface {v3}, Lcom/wolfram/alpha/WASound;->acquireSound()V

    .line 2037
    new-instance v1, Ljava/io/FileInputStream;

    invoke-interface {v3}, Lcom/wolfram/alpha/WASound;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2039
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 2041
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2043
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 2045
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2047
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2049
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    move-object v5, v0

    const v6, 0x7f0200a1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2052
    new-instance v5, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;

    invoke-direct {v5, p0, p1, v3, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$8;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;Lcom/wolfram/alpha/WASound;Landroid/media/MediaPlayer;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #sound:Lcom/wolfram/alpha/WASound;
    .end local p1
    :goto_0
    return-void

    .line 2077
    .end local v2           #mp:Landroid/media/MediaPlayer;
    .restart local p1
    :cond_0
    move-object v0, v4

    check-cast v0, Landroid/media/MediaPlayer;

    move-object v2, v0

    .line 2079
    .restart local v2       #mp:Landroid/media/MediaPlayer;
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2081
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 2083
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    const v5, 0x7f0200a5

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2088
    .restart local p1
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2090
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2067
    .restart local v3       #sound:Lcom/wolfram/alpha/WASound;
    .restart local p1
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public spinnerClickHandler(Lcom/wolfram/android/alpha/PodStateButtonData;I)V
    .locals 0
    .parameter "buttonData"
    .parameter "selectedPosition"

    .prologue
    .line 1750
    invoke-direct {p0, p1, p2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doPodStateQuery(Lcom/wolfram/android/alpha/PodStateButtonData;I)V

    .line 1752
    return-void
.end method

.method public splatClickHandler(Landroid/view/View;)V
    .locals 6
    .parameter "splatView"

    .prologue
    .line 2104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.wolfram.android.alpha.webview.title"

    new-instance v2, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v3, 0x7f0c006b

    invoke-virtual {v2, v3}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    const-string v1, "com.wolfram.android.alpha.webview.res"

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2113
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 2115
    return-void
.end method

.method public startVoiceRecognitionActivity(I)V
    .locals 3
    .parameter "keyboardViewID"

    .prologue
    .line 2172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2177
    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2179
    return-void
.end method

.method public stateClickHandler(Landroid/view/View;)V
    .locals 2
    .parameter "podStateButton"

    .prologue
    .line 1740
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/PodStateButtonData;

    .line 1743
    .local v0, buttonData:Lcom/wolfram/android/alpha/PodStateButtonData;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doPodStateQuery(Lcom/wolfram/android/alpha/PodStateButtonData;I)V

    .line 1745
    return-void
.end method

.method public tryAgainClickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "button"

    .prologue
    .line 1980
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v1

    invoke-interface {v1}, Lcom/wolfram/alpha/WAQuery;->copy()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 1987
    .local v0, query:Lcom/wolfram/alpha/WAQuery;
    const-wide/high16 v1, 0x4024

    invoke-interface {v0}, Lcom/wolfram/alpha/WAQuery;->getScanTimeout()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014

    add-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/wolfram/alpha/WAQuery;->setScanTimeout(D)V

    .line 1989
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Z)V

    .line 1991
    return-void
.end method
