.class public Lkr/co/medinbiz/widget/ultra/VidioView;
.super Ljava/lang/Object;
.source "VidioView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/VidioView$sss;
    }
.end annotation


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field downThread:Ljava/lang/Thread;

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private isRunning:Z

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/widget/LinearLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tempFile:Ljava/io/File;

.field private vidio:Landroid/widget/VideoView;

.field private vvcCtrlBar:Landroid/widget/LinearLayout;

.field private vvcCtrlBtnDone:Landroid/widget/Button;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 10
    .parameter "aContext"
    .parameter "aUrl"
    .parameter "aDate"
    .parameter "aTitle"
    .parameter "aMain"

    .prologue
    const/4 v9, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v9, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->isRunning:Z

    .line 200
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lkr/co/medinbiz/widget/ultra/VidioView$1;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/VidioView$1;-><init>(Lkr/co/medinbiz/widget/ultra/VidioView;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->downThread:Ljava/lang/Thread;

    .line 54
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    .line 55
    iput-object p5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mMainView:Landroid/widget/LinearLayout;

    .line 56
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    .line 57
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    check-cast v1, Landroid/view/LayoutInflater;

    .line 58
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v5, Lkr/co/medinbiz/R$layout;->ultra_video:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->widget:Landroid/view/View;

    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, state:Ljava/lang/String;
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->widget:Landroid/view/View;

    sget v6, Lkr/co/medinbiz/R$id;->progressBar:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->progressBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->widget:Landroid/view/View;

    sget v6, Lkr/co/medinbiz/R$id;->vvc_ctrl_bar:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    .line 62
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->widget:Landroid/view/View;

    sget v6, Lkr/co/medinbiz/R$id;->vvc_ctrl_btn_done:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBtnDone:Landroid/widget/Button;

    .line 63
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->widget:Landroid/view/View;

    sget v6, Lkr/co/medinbiz/R$id;->video_player:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/VideoView;

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    .line 64
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 65
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    .local v0, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3faa3d71

    mul-float v3, v5, v6

    .line 67
    .local v3, ratio_width:F
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v3

    .line 68
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    new-instance v6, Lkr/co/medinbiz/widget/ultra/VidioView$2;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/VidioView$2;-><init>(Lkr/co/medinbiz/widget/ultra/VidioView;)V

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 76
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    new-instance v6, Lkr/co/medinbiz/widget/ultra/VidioView$3;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/VidioView$3;-><init>(Lkr/co/medinbiz/widget/ultra/VidioView;)V

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lkr/co/medinbiz/R$string;->err_no_sdcard:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 98
    :cond_0
    new-instance v2, Landroid/widget/MediaController;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 99
    .local v2, mc:Landroid/widget/MediaController;
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBtnDone:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    invoke-virtual {v5, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 102
    const-string v5, "none"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 103
    invoke-direct {p0, p3, p4}, Lkr/co/medinbiz/widget/ultra/VidioView;->makeMovieFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->filename:Ljava/lang/String;

    .line 104
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->filename:Ljava/lang/String;

    invoke-direct {p0, v5, p2}, Lkr/co/medinbiz/widget/ultra/VidioView;->setMovieFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mMainView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->widget:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    :cond_1
    return-void

    .line 106
    :cond_2
    const-string v5, ""

    invoke-direct {p0, v5, p2}, Lkr/co/medinbiz/widget/ultra/VidioView;->setMovieFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/ultra/VidioView;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->isRunning:Z

    return v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private makeMovieFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "date"
    .parameter "place"

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v1, p1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    .local v1, dateToken:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\\(,\\)"

    invoke-direct {v2, p2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .local v2, palceToken:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, bulider:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 125
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 164
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 165
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vidio:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 166
    return-void
.end method

.method private setConnection(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 184
    .local v1, mUrl:Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #mUrl:Ljava/net/URL;
    .local v2, mUrl:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;

    .line 186
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 188
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 194
    .end local v2           #mUrl:Ljava/net/URL;
    .restart local v1       #mUrl:Ljava/net/URL;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #mUrl:Ljava/net/URL;
    .restart local v2       #mUrl:Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #mUrl:Ljava/net/URL;
    .restart local v1       #mUrl:Ljava/net/URL;
    goto :goto_1

    .end local v1           #mUrl:Ljava/net/URL;
    .restart local v2       #mUrl:Ljava/net/URL;
    :cond_0
    move-object v1, v2

    .end local v2           #mUrl:Ljava/net/URL;
    .restart local v1       #mUrl:Ljava/net/URL;
    goto :goto_0
.end method

.method private setMovieFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .parameter "url"

    .prologue
    .line 136
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lkr/co/medinbiz/helper/FileManager;->getVideosDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 138
    .local v1, vidioDir:Ljava/io/File;
    :try_start_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, p2}, Lkr/co/medinbiz/widget/ultra/VidioView;->playVideo(Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->file:Ljava/io/File;

    .line 144
    new-instance v2, Ljava/io/File;

    const-string v3, ".mp4"

    const-string v4, ".temp"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;

    .line 145
    invoke-direct {p0, p2}, Lkr/co/medinbiz/widget/ultra/VidioView;->setConnection(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 151
    :cond_1
    invoke-direct {p0, p2}, Lkr/co/medinbiz/widget/ultra/VidioView;->playVideo(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 153
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->downThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lkr/co/medinbiz/widget/ultra/VidioView;->playVideo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 255
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBtnDone:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/VidioView;->onBackPressed()V

    .line 259
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->isRunning:Z

    .line 198
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 242
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 243
    :cond_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 246
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
