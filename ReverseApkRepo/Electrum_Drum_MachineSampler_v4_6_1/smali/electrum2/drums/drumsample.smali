.class public Lelectrum2/drums/drumsample;
.super Landroid/app/Activity;
.source "drumsample.java"


# instance fields
.field ScreenHeight:I

.field ScreenWidth:I

.field SetbyCode:Z

.field private browseupClick:Landroid/view/View$OnClickListener;

.field browseupbutton:Landroid/widget/Button;

.field private btnOkClick:Landroid/view/View$OnClickListener;

.field filelist:Landroid/widget/ListView;

.field listClick:Landroid/widget/AdapterView$OnItemClickListener;

.field okbutton:Landroid/widget/Button;

.field onComplete:Landroid/media/MediaPlayer$OnCompletionListener;

.field sampleMedia:Landroid/media/MediaPlayer;

.field samplespinner:Landroid/widget/Spinner;

.field private selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field selectedPosition:I

.field selectedfilename:Ljava/lang/String;

.field selectedname:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/drumsample;->SetbyCode:Z

    .line 92
    new-instance v0, Lelectrum2/drums/drumsample$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsample$1;-><init>(Lelectrum2/drums/drumsample;)V

    iput-object v0, p0, Lelectrum2/drums/drumsample;->selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 134
    new-instance v0, Lelectrum2/drums/drumsample$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsample$2;-><init>(Lelectrum2/drums/drumsample;)V

    iput-object v0, p0, Lelectrum2/drums/drumsample;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 261
    new-instance v0, Lelectrum2/drums/drumsample$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsample$3;-><init>(Lelectrum2/drums/drumsample;)V

    iput-object v0, p0, Lelectrum2/drums/drumsample;->onComplete:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 426
    new-instance v0, Lelectrum2/drums/drumsample$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsample$4;-><init>(Lelectrum2/drums/drumsample;)V

    iput-object v0, p0, Lelectrum2/drums/drumsample;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 480
    new-instance v0, Lelectrum2/drums/drumsample$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumsample$5;-><init>(Lelectrum2/drums/drumsample;)V

    iput-object v0, p0, Lelectrum2/drums/drumsample;->browseupClick:Landroid/view/View$OnClickListener;

    .line 23
    return-void
.end method

.method private PlaySample()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    .line 311
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v6, tempfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 317
    .local v7, tempfilelen:J
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v9, v6, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .local v9, tempfs:Ljava/io/RandomAccessFile;
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    .line 323
    .local v1, TestRiff:I
    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 324
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 326
    .local v3, TestWav:I
    const/16 v11, 0x52

    if-ne v1, v11, :cond_6

    const/16 v11, 0x57

    if-ne v3, v11, :cond_6

    .line 330
    const/16 v5, 0xc

    .line 335
    .local v5, scanpos:I
    :goto_0
    int-to-long v11, v5

    invoke-virtual {v9, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 337
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 339
    .local v10, testval:I
    const v11, 0x666d7420

    if-ne v10, v11, :cond_3

    .line 347
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 349
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 350
    .local v0, TestRate:I
    const/16 v11, 0x22

    if-eq v0, v11, :cond_0

    const/16 v11, 0x44

    if-ne v0, v11, :cond_5

    .line 354
    :cond_0
    const/16 v11, 0x9

    invoke-virtual {v9, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 356
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    .line 357
    .local v2, TestSample:I
    const/16 v11, 0x10

    if-eq v2, v11, :cond_1

    if-eq v2, v13, :cond_1

    const/16 v11, 0x18

    if-ne v2, v11, :cond_4

    .line 362
    :cond_1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 389
    sget-boolean v11, Lelectrum2/drums/globalSounds;->IsPlaying:Z

    if-eqz v11, :cond_7

    .line 393
    sget-object v11, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lelectrum2/drums/soundObj;->LoadWaveFile(Ljava/lang/String;Z)Z

    .line 424
    .end local v0           #TestRate:I
    .end local v1           #TestRiff:I
    .end local v2           #TestSample:I
    .end local v3           #TestWav:I
    .end local v5           #scanpos:I
    .end local v6           #tempfile:Ljava/io/File;
    .end local v7           #tempfilelen:J
    .end local v9           #tempfs:Ljava/io/RandomAccessFile;
    .end local v10           #testval:I
    :cond_2
    :goto_1
    return-void

    .line 341
    .restart local v1       #TestRiff:I
    .restart local v3       #TestWav:I
    .restart local v5       #scanpos:I
    .restart local v6       #tempfile:Ljava/io/File;
    .restart local v7       #tempfilelen:J
    .restart local v9       #tempfs:Ljava/io/RandomAccessFile;
    .restart local v10       #testval:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 332
    goto :goto_0

    .line 367
    .restart local v0       #TestRate:I
    .restart local v2       #TestSample:I
    :cond_4
    iget-object v11, p0, Lelectrum2/drums/drumsample;->selectedname:Landroid/widget/TextView;

    const-string v12, "Invalid file: not 8,16, or 24 bit"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 412
    .end local v0           #TestRate:I
    .end local v1           #TestRiff:I
    .end local v2           #TestSample:I
    .end local v3           #TestWav:I
    .end local v5           #scanpos:I
    .end local v6           #tempfile:Ljava/io/File;
    .end local v7           #tempfilelen:J
    .end local v9           #tempfs:Ljava/io/RandomAccessFile;
    .end local v10           #testval:I
    :catch_0
    move-exception v4

    .line 415
    .local v4, e:Ljava/lang/Exception;
    iget-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    if-eqz v11, :cond_2

    .line 417
    iget-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .line 374
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #TestRate:I
    .restart local v1       #TestRiff:I
    .restart local v3       #TestWav:I
    .restart local v5       #scanpos:I
    .restart local v6       #tempfile:Ljava/io/File;
    .restart local v7       #tempfilelen:J
    .restart local v9       #tempfs:Ljava/io/RandomAccessFile;
    .restart local v10       #testval:I
    :cond_5
    :try_start_1
    iget-object v11, p0, Lelectrum2/drums/drumsample;->selectedname:Landroid/widget/TextView;

    const-string v12, "Invalid file: not 22050 or 44100 sample rate"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 383
    .end local v0           #TestRate:I
    .end local v5           #scanpos:I
    .end local v10           #testval:I
    :cond_6
    iget-object v11, p0, Lelectrum2/drums/drumsample;->selectedname:Landroid/widget/TextView;

    const-string v12, "Invalid file: Not a WAV file"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 399
    .restart local v0       #TestRate:I
    .restart local v2       #TestSample:I
    .restart local v5       #scanpos:I
    .restart local v10       #testval:I
    :cond_7
    new-instance v11, Landroid/media/MediaPlayer;

    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    .line 402
    iget-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lelectrum2/drums/drumsample;->selectedfilename:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 404
    iget-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->prepare()V

    .line 405
    iget-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    iget-object v12, p0, Lelectrum2/drums/drumsample;->onComplete:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v11, v12}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 406
    iget-object v11, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v11}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private ShowSampleFiles()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 200
    iput-boolean v8, p0, Lelectrum2/drums/drumsample;->SetbyCode:Z

    .line 202
    new-instance v4, Lelectrum2/drums/Filter;

    invoke-direct {v4}, Lelectrum2/drums/Filter;-><init>()V

    .line 206
    .local v4, myfilter:Lelectrum2/drums/Filter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v8, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, children:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    array-length v8, v0

    if-lt v1, v8, :cond_1

    .line 234
    new-instance v5, Landroid/widget/ArrayAdapter;

    .line 235
    const v8, 0x7f030009

    .line 234
    invoke-direct {v5, p0, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 238
    .local v5, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, p0, Lelectrum2/drums/drumsample;->filelist:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v8, p0, Lelectrum2/drums/drumsample;->filelist:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 240
    iget-object v8, p0, Lelectrum2/drums/drumsample;->filelist:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 241
    iget-object v8, p0, Lelectrum2/drums/drumsample;->filelist:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 244
    iget-object v8, p0, Lelectrum2/drums/drumsample;->filelist:Landroid/widget/ListView;

    iget-object v9, p0, Lelectrum2/drums/drumsample;->listClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 225
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #count:I
    .restart local v2       #dir:Ljava/io/File;
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lelectrum2/drums/globalSounds;->subfolder:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v7, test:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v0, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #dir:Ljava/io/File;
    .end local v7           #test:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 253
    .local v3, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error loading sample folder filenames\r\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 255
    .local v6, temptoast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private StopPlaying()V
    .locals 1

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 277
    iget-object v0, p0, Lelectrum2/drums/drumsample;->sampleMedia:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lelectrum2/drums/drumsample;->ShowSampleFiles()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lelectrum2/drums/drumsample;->StopPlaying()V

    return-void
.end method

.method static synthetic access$2(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    invoke-direct {p0}, Lelectrum2/drums/drumsample;->PlaySample()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lelectrum2/drums/drumsample;->setContentView(I)V

    .line 52
    iput-boolean v6, p0, Lelectrum2/drums/drumsample;->SetbyCode:Z

    .line 54
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lelectrum2/drums/drumsample;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lelectrum2/drums/drumsample;->ScreenWidth:I

    .line 57
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lelectrum2/drums/drumsample;->ScreenHeight:I

    .line 59
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lelectrum2/drums/drumsample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lelectrum2/drums/drumsample;->filelist:Landroid/widget/ListView;

    .line 60
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lelectrum2/drums/drumsample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lelectrum2/drums/drumsample;->selectedname:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lelectrum2/drums/drumsample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lelectrum2/drums/drumsample;->samplespinner:Landroid/widget/Spinner;

    .line 63
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 64
    const v2, 0x7f03000a

    .line 65
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "samples"

    aput-object v5, v3, v4

    const-string v4, "exported"

    aput-object v4, v3, v6

    .line 63
    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 67
    .local v1, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lelectrum2/drums/drumsample;->samplespinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    iget-object v2, p0, Lelectrum2/drums/drumsample;->samplespinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lelectrum2/drums/drumsample;->selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Lelectrum2/drums/drumsample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lelectrum2/drums/drumsample;->okbutton:Landroid/widget/Button;

    .line 75
    iget-object v2, p0, Lelectrum2/drums/drumsample;->okbutton:Landroid/widget/Button;

    iget-object v3, p0, Lelectrum2/drums/drumsample;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lelectrum2/drums/drumsample;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lelectrum2/drums/drumsample;->browseupbutton:Landroid/widget/Button;

    .line 78
    iget-object v2, p0, Lelectrum2/drums/drumsample;->browseupbutton:Landroid/widget/Button;

    iget-object v3, p0, Lelectrum2/drums/drumsample;->browseupClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget-object v2, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v2}, Lelectrum2/drums/soundObj;->BackupCurrentSample()V

    .line 84
    invoke-direct {p0}, Lelectrum2/drums/drumsample;->ShowSampleFiles()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 294
    invoke-direct {p0}, Lelectrum2/drums/drumsample;->StopPlaying()V

    .line 296
    return-void
.end method
