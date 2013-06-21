.class public Lcom/madvil/ms/MusicToPhoneActivity;
.super Landroid/app/Activity;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixAdViewListener;


# static fields
.field public static final CHART_UPDATE_DAY_DELTA:B = 0x7t

.field public static final PAGES_LIMIT:I = 0xc

.field public static singletone:Lcom/madvil/ms/MusicToPhoneActivity;


# instance fields
.field private _downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;

.field private aboutDialog:Landroid/app/Dialog;

.field private activityManager:Landroid/app/ActivityManager;

.field private adview_banner:Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

.field public allDownloadedTV:Landroid/widget/TextView;

.field public allDownloadsPB:Landroid/widget/ProgressBar;

.field public billboardChartsAdapter:Lcom/madvil/core/BillboardChartsAdapter;

.field private chartProgressDialog:Landroid/app/ProgressDialog;

.field private chartUpdateHandler:Landroid/os/Handler;

.field public chartsAdapter:Lcom/madvil/core/ChartAdapter;

.field public chartsIV:Landroid/widget/ImageView;

.field public chartsListView:Landroid/widget/ListView;

.field public chartsRL:Landroid/widget/RelativeLayout;

.field public chartsTabBtn:Landroid/widget/Button;

.field public connectionsRadioGroup:Landroid/widget/RadioGroup;

.field public connectivityManager:Landroid/net/ConnectivityManager;

.field private currentChartFileName:Ljava/lang/String;

.field private currentChartLink:Ljava/lang/String;

.field public currentSE:Lcom/madvil/searchengines/CombinedSearchEngine;

.field private currentTab:I

.field private downloadItemChecked:Lcom/madvil/core/SimpleDownload;

.field public downloadsAdapter:Lcom/madvil/core/DownloadsAdapter;

.field public downloadsIV:Landroid/widget/ImageView;

.field public downloadsListView:Landroid/widget/ListView;

.field public downloadsQueueAdapter:Lcom/madvil/core/DownloadsQueueAdapter;

.field public downloadsQueueListView:Landroid/widget/ListView;

.field public downloadsRL:Landroid/widget/RelativeLayout;

.field public downloadsTabBtn:Landroid/widget/Button;

.field public editor:Landroid/content/SharedPreferences$Editor;

.field public inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private libItemChecked:I

.field public libraryAdapter:Lcom/madvil/core/LibraryAdapter;

.field public libraryIV:Landroid/widget/ImageView;

.field public libraryListView:Landroid/widget/ListView;

.field public libraryRL:Landroid/widget/RelativeLayout;

.field public libraryTabBtn:Landroid/widget/Button;

.field private memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field public preferences:Landroid/content/SharedPreferences;

.field private previewDialog:Landroid/app/Dialog;

.field private previewDialogArtist:Landroid/widget/EditText;

.field private previewDialogBitrate:Landroid/widget/TextView;

.field private previewDialogCancelButton:Landroid/widget/Button;

.field private previewDialogDownloadButton:Landroid/widget/Button;

.field private previewDialogDur:Landroid/widget/TextView;

.field private previewDialogPB:Landroid/widget/ProgressBar;

.field private previewDialogPlayerButton:Landroid/widget/Button;

.field private previewDialogPlayerIV:Landroid/widget/ImageView;

.field private previewDialogSize:Landroid/widget/TextView;

.field private previewDialogSizePB:Landroid/widget/ProgressBar;

.field private previewDialogSong:Landroid/widget/EditText;

.field private previewDialogStreaming:Landroid/widget/TextView;

.field private previewHandler:Landroid/os/Handler;

.field private previewMP:Landroid/media/MediaPlayer;

.field public progresSearchingDShowed:Z

.field public progressDialog:Landroid/app/ProgressDialog;

.field public progressRL:Landroid/widget/RelativeLayout;

.field public rBtn1:Landroid/widget/RadioButton;

.field public rBtn2:Landroid/widget/RadioButton;

.field public rBtn3:Landroid/widget/RadioButton;

.field public rBtn4:Landroid/widget/RadioButton;

.field public rBtn5:Landroid/widget/RadioButton;

.field public searchAdapter:Lcom/madvil/core/SearchResultAdapter;

.field public searchBtn:Landroid/widget/Button;

.field public searchEditText:Landroid/widget/EditText;

.field public searchIV:Landroid/widget/ImageView;

.field private searchInProgress:Z

.field public searchListView:Landroid/widget/ListView;

.field public searchRL:Landroid/widget/RelativeLayout;

.field public searchResult:Lcom/madvil/searchengines/ParsedResponse;

.field private searchString:Ljava/lang/String;

.field public searchTabBtn:Landroid/widget/Button;

.field public searchingThread:Ljava/lang/Thread;

.field public showToastHandler:Landroid/os/Handler;

.field private showedSimpleSong:Lcom/madvil/core/SimpleSong;

.field private showingCount:I

.field private started:Z

.field private storage:Ljava/lang/String;

.field public updateHandler:Landroid/os/Handler;

.field private withCyrillic:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 112
    iput-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->updateHandler:Landroid/os/Handler;

    .line 113
    iput-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showToastHandler:Landroid/os/Handler;

    .line 114
    iput-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchResult:Lcom/madvil/searchengines/ParsedResponse;

    .line 135
    iput-boolean v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchInProgress:Z

    .line 136
    iput-boolean v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->withCyrillic:Z

    .line 139
    iput v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I

    .line 529
    iput-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;

    .line 532
    iput-boolean v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->started:Z

    .line 703
    iput v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showingCount:I

    .line 802
    iput-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchingThread:Ljava/lang/Thread;

    .line 803
    iput-boolean v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->progresSearchingDShowed:Z

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/madvil/ms/MusicToPhoneActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I

    return v0
.end method

.method static synthetic access$1(Lcom/madvil/ms/MusicToPhoneActivity;Lcom/madvil/core/SimpleDownloadForAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;

    return-void
.end method

.method static synthetic access$10(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSong:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogArtist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleSong;
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;

    return-object v0
.end method

.method static synthetic access$13(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->storage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$15(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/madvil/ms/MusicToPhoneActivity;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$18(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPB:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$19(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownloadForAdapter;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->_downloadItemChecked:Lcom/madvil/core/SimpleDownloadForAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/madvil/ms/MusicToPhoneActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->started:Z

    return v0
.end method

.method static synthetic access$21(Lcom/madvil/ms/MusicToPhoneActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->started:Z

    return-void
.end method

.method static synthetic access$22(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSizePB:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$23(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogBitrate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/madvil/ms/MusicToPhoneActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 703
    iget v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showingCount:I

    return v0
.end method

.method static synthetic access$26(Lcom/madvil/ms/MusicToPhoneActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchInProgress:Z

    return-void
.end method

.method static synthetic access$27(Lcom/madvil/ms/MusicToPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/madvil/ms/MusicToPhoneActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->withCyrillic:Z

    return v0
.end method

.method static synthetic access$3(Lcom/madvil/ms/MusicToPhoneActivity;Lcom/madvil/core/SimpleDownload;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadItemChecked:Lcom/madvil/core/SimpleDownload;

    return-void
.end method

.method static synthetic access$30(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 949
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$31(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 950
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 951
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleDownload;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadItemChecked:Lcom/madvil/core/SimpleDownload;

    return-object v0
.end method

.method static synthetic access$5(Lcom/madvil/ms/MusicToPhoneActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I

    return-void
.end method

.method static synthetic access$6(Lcom/madvil/ms/MusicToPhoneActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 148
    iget v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I

    return v0
.end method

.method static synthetic access$7(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ActivityManager;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->activityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-object v0
.end method

.method static synthetic access$9(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "link"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/BillboardChart;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/BillboardChart;>;"
    new-instance v0, Lcom/madvil/core/BillboardChart;

    invoke-direct {v0}, Lcom/madvil/core/BillboardChart;-><init>()V

    .line 923
    .local v0, bc:Lcom/madvil/core/BillboardChart;
    invoke-virtual {v0, p2}, Lcom/madvil/core/BillboardChart;->setName(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0, p4}, Lcom/madvil/core/BillboardChart;->setFileName(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0, p3}, Lcom/madvil/core/BillboardChart;->setLink(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method private openAppInMarket()V
    .locals 3

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void
.end method


# virtual methods
.method public aboutDialogInit()V
    .locals 5

    .prologue
    .line 509
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 510
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    .line 511
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 510
    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 512
    .local v2, layoutAboutScreen:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/madvil/ms/MusicToPhoneActivity;->aboutDialog:Landroid/app/Dialog;

    .line 515
    return-void
.end method

.method public cancelPreviewDialog()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;

    .line 756
    return-void

    .line 752
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public changeTab(I)V
    .locals 3
    .parameter "ind"

    .prologue
    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchRL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsRL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryRL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsRL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 767
    packed-switch p1, :pswitch_data_0

    .line 795
    :goto_0
    iput p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I

    .line 800
    :goto_1
    return-void

    .line 768
    :pswitch_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchIV:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 770
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 771
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 772
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    goto :goto_1

    .line 775
    :pswitch_1
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 777
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsIV:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 778
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 779
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 781
    :pswitch_2
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 783
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 784
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryIV:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 785
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 787
    :pswitch_3
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsRL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 789
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 790
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryIV:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 791
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsIV:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public checkNetwork()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fillCharts()V
    .locals 4

    .prologue
    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/BillboardChart;>;"
    const-string v1, "Hot 100"

    const-string v2, "http://www.billboard.com/rss/charts/hot-100"

    const-string v3, "hot100.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v1, "Radio Songs"

    const-string v2, "http://www.billboard.com/rss/charts/radio-songs"

    const-string v3, "radio_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v1, "Digital Songs"

    const-string v2, "http://www.billboard.com/rss/charts/digital-songs"

    const-string v3, "digital_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v1, "Ringtones"

    const-string v2, "http://www.billboard.com/rss/charts/ringtones"

    const-string v3, "ringtones.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v1, "Heatseekers Songs"

    const-string v2, "http://www.billboard.com/rss/charts/heatseekers-songs"

    .line 892
    const-string v3, "heatseekers_songs.xml"

    .line 891
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v1, "Pop Songs"

    const-string v2, "http://www.billboard.com/rss/charts/pop-songs"

    const-string v3, "pop_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v1, "Adult Contemporary"

    const-string v2, "http://www.billboard.com/rss/charts/adult-contemporary"

    .line 895
    const-string v3, "adult_contemporary.xml"

    .line 894
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v1, "Adult Pop Songs"

    const-string v2, "http://www.billboard.com/rss/charts/adult-pop-songs"

    .line 897
    const-string v3, "adult_pop_songs.xml"

    .line 896
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v1, "Dance/Club Play Songs"

    const-string v2, "http://www.billboard.com/rss/charts/dance-club-play-songs"

    .line 899
    const-string v3, "dance_club_play_songs.xml"

    .line 898
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v1, "R&B/Hip-Hop Songs"

    const-string v2, "http://www.billboard.com/rss/charts/r-b-hip-hop-songs"

    .line 901
    const-string v3, "r_b_hip_hop_songs.xml"

    .line 900
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v1, "Rap Songs"

    const-string v2, "http://www.billboard.com/rss/charts/rap-songs"

    const-string v3, "rap_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v1, "Rock Songs"

    const-string v2, "http://www.billboard.com/rss/charts/rock-songs"

    const-string v3, "rock_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v1, "Alternative Songs"

    const-string v2, "http://www.billboard.com/rss/charts/alternative-songs"

    .line 905
    const-string v3, "alternative_songs.xml"

    .line 904
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v1, "Country Songs"

    const-string v2, "http://www.billboard.com/rss/charts/country-songs"

    const-string v3, "country_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v1, "Jazz Songs"

    const-string v2, "http://www.billboard.com/rss/charts/jazz-songs"

    const-string v3, "jazz_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v1, "Latin Songs"

    const-string v2, "http://www.billboard.com/rss/charts/latin-songs"

    const-string v3, "latin_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v1, "Regional Mexican Songs"

    const-string v2, "http://www.billboard.com/rss/charts/regional-mexican-songs"

    .line 910
    const-string v3, "regional_mexican_songs.xml"

    .line 909
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v1, "Latin Pop Songs"

    const-string v2, "http://www.billboard.com/rss/charts/latin-pop-songs"

    const-string v3, "latin_pop_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v1, "Tropical Songs"

    const-string v2, "http://www.billboard.com/rss/charts/tropical-songs"

    const-string v3, "tropical_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v1, "Christian Songs"

    const-string v2, "http://www.billboard.com/rss/charts/christian-songs"

    const-string v3, "christian_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v1, "Gospel Songs"

    const-string v2, "http://www.billboard.com/rss/charts/gospel-songs"

    const-string v3, "gospel_songs.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v1, "Canadian Hot 100"

    const-string v2, "http://www.billboard.com/rss/charts/canadian-hot-100"

    const-string v3, "canadian_hot_100.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/madvil/ms/MusicToPhoneActivity;->addChart(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v1, Lcom/madvil/core/BillboardChartsAdapter;

    invoke-direct {v1, p0, v0}, Lcom/madvil/core/BillboardChartsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->billboardChartsAdapter:Lcom/madvil/core/BillboardChartsAdapter;

    .line 919
    return-void
.end method

.method public firstSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 806
    iget-boolean v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchInProgress:Z

    if-eqz v1, :cond_0

    .line 883
    :goto_0
    return-void

    .line 810
    :cond_0
    const-string v1, ""

    const-string v2, "Searching..."

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 811
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/madvil/ms/MusicToPhoneActivity$20;

    invoke-direct {v2, p0}, Lcom/madvil/ms/MusicToPhoneActivity$20;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 838
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->withCyrillic:Z

    .line 839
    iput-boolean v3, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchInProgress:Z

    .line 841
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 842
    .local v0, l:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    iput-boolean v3, p0, Lcom/madvil/ms/MusicToPhoneActivity;->withCyrillic:Z

    .line 846
    :cond_1
    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$21;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$21;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    iput-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->updateHandler:Landroid/os/Handler;

    .line 868
    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$22;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$22;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    iput-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchingThread:Ljava/lang/Thread;

    .line 882
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public keywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadXmlChart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "link"
    .parameter "fileName"

    .prologue
    .line 1019
    const/4 v5, 0x0

    .line 1020
    .local v5, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1024
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 1026
    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 1031
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1033
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1035
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v8, 0x32

    invoke-direct {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1036
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 1037
    .local v3, current:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    .line 1041
    const/4 v8, 0x0

    invoke-super {p0, p2, v8}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 1042
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 1044
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 1045
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1050
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #conn:Ljava/net/URLConnection;
    .end local v3           #current:I
    .end local v7           #url:Ljava/net/URL;
    :goto_1
    return-void

    .line 1038
    .restart local v0       #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #conn:Ljava/net/URLConnection;
    .restart local v3       #current:I
    .restart local v7       #url:Ljava/net/URL;
    :cond_0
    int-to-byte v8, v3

    invoke-virtual {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #conn:Ljava/net/URLConnection;
    .end local v3           #current:I
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1048
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 1143
    const-string v0, "mp3"

    const-string v1, "Ad clicked!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/madvil/ms/MusicToPhoneActivity;->requestWindowFeature(I)Z

    .line 162
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->setContentView(I)V

    .line 163
    sput-object p0, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 165
    const-string v0, "musictophone"

    invoke-virtual {p0, v0, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->preferences:Landroid/content/SharedPreferences;

    .line 166
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-static {}, Lcom/madvil/core/Helper;->getStorage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->storage:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->storage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 171
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->activityManager:Landroid/app/ActivityManager;

    .line 172
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 174
    new-instance v0, Lcom/madvil/searchengines/CombinedSearchEngine;

    invoke-direct {v0}, Lcom/madvil/searchengines/CombinedSearchEngine;-><init>()V

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentSE:Lcom/madvil/searchengines/CombinedSearchEngine;

    .line 176
    sget-boolean v0, Lcom/madvil/core/DownloadService;->started:Z

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/madvil/core/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    :cond_0
    new-instance v0, Lcom/madvil/ms/MusicToPhoneActivity$1;

    invoke-direct {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity$1;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showToastHandler:Landroid/os/Handler;

    .line 193
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->adview_banner:Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    .line 194
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->adview_banner:Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z

    .line 196
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchRL:Landroid/widget/RelativeLayout;

    .line 197
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsRL:Landroid/widget/RelativeLayout;

    .line 198
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryRL:Landroid/widget/RelativeLayout;

    .line 199
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsRL:Landroid/widget/RelativeLayout;

    .line 200
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->progressRL:Landroid/widget/RelativeLayout;

    .line 201
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchListView:Landroid/widget/ListView;

    .line 202
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsListView:Landroid/widget/ListView;

    .line 203
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueListView:Landroid/widget/ListView;

    .line 204
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryListView:Landroid/widget/ListView;

    .line 205
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsListView:Landroid/widget/ListView;

    .line 206
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    .line 207
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchBtn:Landroid/widget/Button;

    .line 208
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchTabBtn:Landroid/widget/Button;

    .line 209
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsTabBtn:Landroid/widget/Button;

    .line 210
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryTabBtn:Landroid/widget/Button;

    .line 211
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsTabBtn:Landroid/widget/Button;

    .line 212
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchIV:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsIV:Landroid/widget/ImageView;

    .line 214
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryIV:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsIV:Landroid/widget/ImageView;

    .line 216
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->allDownloadsPB:Landroid/widget/ProgressBar;

    .line 217
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->allDownloadedTV:Landroid/widget/TextView;

    .line 219
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 220
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 222
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->aboutDialogInit()V

    .line 223
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogInit()V

    .line 224
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->fillCharts()V

    .line 226
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchBtn:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$2;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$2;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$3;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$4;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$4;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$5;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$5;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$6;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$6;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchListView:Landroid/widget/ListView;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$7;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$7;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$8;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$8;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 362
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsListView:Landroid/widget/ListView;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$9;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$9;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueListView:Landroid/widget/ListView;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$10;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$10;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryListView:Landroid/widget/ListView;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$11;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$11;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsListView:Landroid/widget/ListView;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$12;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$12;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 465
    invoke-virtual {p0, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->changeTab(I)V

    .line 466
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
    .locals 3
    .parameter "adView"
    .parameter "string"

    .prologue
    .line 1147
    const-string v0, "mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The custom ad responded with \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' when touched!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return-void
.end method

.method public onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"

    .prologue
    .line 1138
    const-string v0, "mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad request failed with error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->setVisibility(I)V

    .line 1140
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 470
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 471
    iget v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/madvil/core/ChartAdapter;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->billboardChartsAdapter:Lcom/madvil/core/BillboardChartsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    :cond_0
    :goto_0
    return v2

    .line 473
    :cond_1
    iget v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentTab:I

    if-lez v0, :cond_2

    .line 474
    invoke-virtual {p0, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->changeTab(I)V

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->finish()V

    goto :goto_0
.end method

.method public onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
    .locals 3
    .parameter "adView"
    .parameter "openAllocationCode"

    .prologue
    .line 1151
    const-string v0, "mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad request returned open allocation code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 498
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 504
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->aboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v2

    goto :goto_0

    .line 500
    :pswitch_1
    invoke-direct {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->openAppInMarket()V

    move v0, v2

    goto :goto_0

    .line 501
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/madvil/core/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->finish()V

    move v0, v2

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x7f060043
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1133
    const-string v0, "mp3"

    const-string v1, "The ad request was successful!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->setVisibility(I)V

    .line 1135
    return-void
.end method

.method public openSongInPlayer(Lcom/madvil/core/SimpleSong;)V
    .locals 4
    .parameter "ss"

    .prologue
    .line 1089
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1091
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 1093
    return-void
.end method

.method public previewDialogInit()V
    .locals 2

    .prologue
    .line 535
    new-instance v0, Landroid/app/Dialog;

    const/high16 v1, 0x7f07

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    .line 536
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 538
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSong:Landroid/widget/EditText;

    .line 539
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogArtist:Landroid/widget/EditText;

    .line 540
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;

    .line 541
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogDur:Landroid/widget/TextView;

    .line 542
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSize:Landroid/widget/TextView;

    .line 543
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogBitrate:Landroid/widget/TextView;

    .line 544
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogDownloadButton:Landroid/widget/Button;

    .line 545
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogCancelButton:Landroid/widget/Button;

    .line 546
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerButton:Landroid/widget/Button;

    .line 547
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPB:Landroid/widget/ProgressBar;

    .line 548
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSizePB:Landroid/widget/ProgressBar;

    .line 549
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerIV:Landroid/widget/ImageView;

    .line 551
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$13;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$13;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 560
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$14;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$14;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 569
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogDownloadButton:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$15;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$15;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$16;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$16;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerButton:Landroid/widget/Button;

    new-instance v1, Lcom/madvil/ms/MusicToPhoneActivity$17;

    invoke-direct {v1, p0}, Lcom/madvil/ms/MusicToPhoneActivity$17;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    new-instance v0, Lcom/madvil/ms/MusicToPhoneActivity$18;

    invoke-direct {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity$18;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    iput-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewHandler:Landroid/os/Handler;

    .line 701
    return-void
.end method

.method public query()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshChartListView(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 933
    :try_start_0
    invoke-static {p1, p0}, Lcom/madvil/core/BillboardChartParser;->parse(Ljava/lang/String;Landroid/content/Context;)Lcom/madvil/core/ChartAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsAdapter:Lcom/madvil/core/ChartAdapter;

    .line 934
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartsAdapter:Lcom/madvil/core/ChartAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :goto_0
    return-void

    .line 936
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 937
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeFromLibrary(Lcom/madvil/core/SimpleSong;)V
    .locals 4
    .parameter "ss"

    .prologue
    .line 1098
    :try_start_0
    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/Helper;->deleteDownloadFromStorage(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->libraryAdapter:Lcom/madvil/core/LibraryAdapter;

    invoke-virtual {v0, p1}, Lcom/madvil/core/LibraryAdapter;->remove(Ljava/lang/Object;)V

    .line 1100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/madvil/core/Helper;->getStorage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1100
    invoke-virtual {p0, v0}, Lcom/madvil/ms/MusicToPhoneActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUsRingtone(Lcom/madvil/core/SimpleSong;)V
    .locals 7
    .parameter "ss"

    .prologue
    .line 1109
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v0, k:Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v4, "title"

    const-string v5, "unknown"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v4, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1115
    const-string v4, "mime_type"

    const-string v5, "audio/mpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v4, "artist"

    const-string v5, "unknown"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v4, "is_ringtone"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1118
    const-string v4, "is_notification"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1119
    const-string v4, "is_alarm"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1120
    const-string v4, "is_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1122
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1123
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1125
    .local v1, newUri:Landroid/net/Uri;
    const/4 v4, 0x1

    invoke-static {p0, v4, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1127
    const-string v4, "Ringtone set"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    .end local v0           #k:Ljava/io/File;
    .end local v1           #newUri:Landroid/net/Uri;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1129
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public showPreviewDialog(Lcom/madvil/core/SimpleSong;)V
    .locals 3
    .parameter "ss"

    .prologue
    const/4 v2, 0x0

    .line 705
    if-eqz p1, :cond_0

    .line 706
    iput-boolean v2, p0, Lcom/madvil/ms/MusicToPhoneActivity;->started:Z

    .line 707
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;

    .line 708
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSong:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/madvil/core/Helper;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogArtist:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/madvil/core/Helper;->prepareString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;

    const-string v1, "Press Play to start streaming"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPB:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 712
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPB:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 713
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerIV:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 714
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPlayerButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 715
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSizePB:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogDur:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/madvil/core/SimpleSong;->getDuration()I

    move-result v2

    invoke-static {v2}, Lcom/madvil/core/Helper;->parseSeconds(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSize:Landroid/widget/TextView;

    const-string v1, "Size:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogBitrate:Landroid/widget/TextView;

    const-string v1, "Bitrate:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 722
    new-instance v0, Lcom/madvil/ms/MusicToPhoneActivity$19;

    invoke-direct {v0, p0}, Lcom/madvil/ms/MusicToPhoneActivity$19;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    .line 742
    invoke-virtual {v0}, Lcom/madvil/ms/MusicToPhoneActivity$19;->start()V

    .line 744
    :cond_0
    return-void
.end method

.method public updateDownloadsFromService()V
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4130

    .line 1055
    const-wide/16 v3, 0x0

    .line 1056
    .local v3, downloaded:D
    const-wide/16 v1, 0x0

    .line 1057
    .local v1, downloadSize:D
    :try_start_0
    sget-object v6, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1062
    const-wide/16 v6, 0x0

    cmpl-double v6, v1, v6

    if-lez v6, :cond_1

    .line 1063
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->allDownloadsPB:Landroid/widget/ProgressBar;

    const-wide/high16 v7, 0x4059

    mul-double/2addr v7, v3

    div-double/2addr v7, v1

    double-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1068
    :goto_1
    div-double/2addr v3, v9

    .line 1069
    div-double/2addr v1, v9

    .line 1070
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v6, "#.##"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, df:Ljava/text/DecimalFormat;
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->allDownloadedTV:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/madvil/ms/MusicToPhoneActivity;->allDownloadsPB:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "% "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1072
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1071
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsAdapter:Lcom/madvil/core/DownloadsAdapter;

    if-nez v6, :cond_2

    .line 1075
    new-instance v6, Lcom/madvil/core/DownloadsAdapter;

    sget-object v7, Lcom/madvil/core/DownloadService;->activeDownloadsForAdapter:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/madvil/core/DownloadsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsAdapter:Lcom/madvil/core/DownloadsAdapter;

    .line 1076
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsAdapter:Lcom/madvil/core/DownloadsAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1078
    new-instance v6, Lcom/madvil/core/DownloadsQueueAdapter;

    sget-object v7, Lcom/madvil/core/DownloadService;->downloadsQueue:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/madvil/core/DownloadsQueueAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueAdapter:Lcom/madvil/core/DownloadsQueueAdapter;

    .line 1079
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueAdapter:Lcom/madvil/core/DownloadsQueueAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1086
    .end local v0           #df:Ljava/text/DecimalFormat;
    :goto_2
    return-void

    .line 1057
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/madvil/core/SimpleDownloadForAdapter;

    .line 1058
    .local v5, sdfa:Lcom/madvil/core/SimpleDownloadForAdapter;
    invoke-virtual {v5}, Lcom/madvil/core/SimpleDownloadForAdapter;->getDownloaded()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v3, v7

    .line 1059
    invoke-virtual {v5}, Lcom/madvil/core/SimpleDownloadForAdapter;->getSizeInBytes()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v1, v7

    goto/16 :goto_0

    .line 1065
    .end local v5           #sdfa:Lcom/madvil/core/SimpleDownloadForAdapter;
    :cond_1
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->allDownloadsPB:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_1

    .line 1085
    :catch_0
    move-exception v6

    goto :goto_2

    .line 1081
    .restart local v0       #df:Ljava/text/DecimalFormat;
    :cond_2
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsAdapter:Lcom/madvil/core/DownloadsAdapter;

    invoke-virtual {v6}, Lcom/madvil/core/DownloadsAdapter;->notifyDataSetChanged()V

    .line 1082
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->downloadsQueueAdapter:Lcom/madvil/core/DownloadsQueueAdapter;

    invoke-virtual {v6}, Lcom/madvil/core/DownloadsQueueAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public updateXmlChart(I)V
    .locals 10
    .parameter "chartInd"

    .prologue
    .line 956
    :try_start_0
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->billboardChartsAdapter:Lcom/madvil/core/BillboardChartsAdapter;

    invoke-virtual {v6, p1}, Lcom/madvil/core/BillboardChartsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/madvil/core/BillboardChart;

    invoke-virtual {v6}, Lcom/madvil/core/BillboardChart;->getFileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;

    .line 957
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->billboardChartsAdapter:Lcom/madvil/core/BillboardChartsAdapter;

    invoke-virtual {v6, p1}, Lcom/madvil/core/BillboardChartsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/madvil/core/BillboardChart;

    invoke-virtual {v6}, Lcom/madvil/core/BillboardChart;->getLink()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartLink:Ljava/lang/String;

    .line 959
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 961
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    div-long v2, v6, v8

    .line 962
    .local v2, i1:J
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    div-long v4, v6, v8

    .line 964
    .local v4, i2:J
    sub-long v6, v2, v4

    long-to-int v1, v6

    .line 965
    .local v1, i:I
    const/4 v6, 0x7

    if-ge v1, v6, :cond_0

    .line 966
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/madvil/ms/MusicToPhoneActivity;->refreshChartListView(Ljava/lang/String;)V

    .line 1016
    .end local v0           #file:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #i1:J
    .end local v4           #i2:J
    :goto_0
    return-void

    .line 968
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #i:I
    .restart local v2       #i1:J
    .restart local v4       #i2:J
    :cond_0
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_2

    .line 969
    const-string v6, "Network is currently unavailable"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 970
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/madvil/ms/MusicToPhoneActivity;->refreshChartListView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    .end local v0           #file:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #i1:J
    .end local v4           #i2:J
    :catch_0
    move-exception v6

    .line 982
    :cond_1
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "Updating "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    iget-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->billboardChartsAdapter:Lcom/madvil/core/BillboardChartsAdapter;

    invoke-virtual {v6, p1}, Lcom/madvil/core/BillboardChartsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/madvil/core/BillboardChart;

    invoke-virtual {v6}, Lcom/madvil/core/BillboardChart;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " chart..."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    .line 982
    invoke-static {p0, v7, v6, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartProgressDialog:Landroid/app/ProgressDialog;

    .line 985
    new-instance v6, Lcom/madvil/ms/MusicToPhoneActivity$23;

    invoke-direct {v6, p0}, Lcom/madvil/ms/MusicToPhoneActivity$23;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    iput-object v6, p0, Lcom/madvil/ms/MusicToPhoneActivity;->chartUpdateHandler:Landroid/os/Handler;

    .line 1006
    new-instance v6, Lcom/madvil/ms/MusicToPhoneActivity$24;

    invoke-direct {v6, p0}, Lcom/madvil/ms/MusicToPhoneActivity$24;-><init>(Lcom/madvil/ms/MusicToPhoneActivity;)V

    .line 1015
    invoke-virtual {v6}, Lcom/madvil/ms/MusicToPhoneActivity$24;->start()V

    goto :goto_0

    .line 975
    .restart local v0       #file:Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/madvil/ms/MusicToPhoneActivity;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_1

    .line 976
    const-string v6, "Network is currently unavailable"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
