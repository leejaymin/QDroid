.class public Ledu/umich/PowerTutor/ui/PowerViewer;
.super Landroid/app/Activity;
.source "PowerViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;,
        Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;,
        Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;
    }
.end annotation


# static fields
.field public static final DIALOG_PROBABILITY_PROGRESS:I = 0x1

.field private static final HTTP_STATUS_OK:I = 0xc8

.field private static final MENU_APP_RATING:I = 0x2

.field private static final MENU_OPTIONS:I = 0x0

.field private static final MENU_TOGGLE_COLLECTING:I = 0x1

.field public static final PROCESSRESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerViewer"


# instance fields
.field private PROGRESS_MAX:I

.field private SeletedPackageName:Ljava/lang/String;

.field private SeletedUid:I

.field private chartLayout:Landroid/widget/LinearLayout;

.field private collecting:Z

.field private collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

.field private componentNames:[Ljava/lang/String;

.field private components:I

.field private componentsMaxPower:[I

.field private conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

.field private counterService:Ledu/umich/PowerTutor/service/ICounterService;

.field private handler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field mTimerHandler:Landroid/os/Handler;

.field private mWriteProgressDialog:Landroid/app/ProgressDialog;

.field private noUidMask:I

.field private prefs:Landroid/content/SharedPreferences;

.field private serviceIntent:Landroid/content/Intent;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/16 v0, 0x12c

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I

    .line 515
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerViewer$1;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/PowerViewer$1;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mTimerHandler:Landroid/os/Handler;

    .line 533
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerViewer$2;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/PowerViewer$2;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/PowerViewer;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I

    return v0
.end method

.method static synthetic access$10(Ledu/umich/PowerTutor/ui/PowerViewer;Ljava/lang/String;IIIIIII)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-direct/range {p0 .. p8}, Ledu/umich/PowerTutor/ui/PowerViewer;->sendData(Ljava/lang/String;IIIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$12(Ledu/umich/PowerTutor/ui/PowerViewer;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->uid:I

    return v0
.end method

.method static synthetic access$13(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/ui/PowerViewer;Ledu/umich/PowerTutor/service/ICounterService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-void
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-object v0
.end method

.method static synthetic access$4(Ledu/umich/PowerTutor/ui/PowerViewer;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Ledu/umich/PowerTutor/ui/PowerViewer;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentsMaxPower:[I

    return-void
.end method

.method static synthetic access$6(Ledu/umich/PowerTutor/ui/PowerViewer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I

    return-void
.end method

.method static synthetic access$7(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    return-object v0
.end method

.method static synthetic access$8(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->serviceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9(Ledu/umich/PowerTutor/ui/PowerViewer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->SeletedPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private makeEntity(Ljava/util/Vector;)Lorg/apache/http/HttpEntity;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, nameValue:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 609
    .local v1, result:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Lorg/apache/http/HttpEntity;
    .local v2, result:Lorg/apache/http/HttpEntity;
    move-object v1, v2

    .line 614
    .end local v2           #result:Lorg/apache/http/HttpEntity;
    .restart local v1       #result:Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeHttpPost(Ljava/lang/String;IIIIIIILjava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 5
    .parameter "PackageName"
    .parameter "total"
    .parameter "led"
    .parameter "cpu"
    .parameter "wifi"
    .parameter "threeg"
    .parameter "gps"
    .parameter "audio"
    .parameter "url"

    .prologue
    .line 590
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 593
    .local v0, nameValue:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "packagename"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "total"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "led"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 596
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cpu"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "wifi"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "threeg"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "gps"

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "audio"

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-direct {p0, v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->makeEntity(Ljava/util/Vector;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 603
    return-object v1
.end method

.method private sendData(Ljava/lang/String;IIIIIII)Ljava/lang/String;
    .locals 22
    .parameter "PackageName"
    .parameter "total"
    .parameter "led"
    .parameter "cpu"
    .parameter "wifi"
    .parameter "threeg"
    .parameter "gps"
    .parameter "audio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    const/16 v18, 0x0

    .line 553
    .local v18, result:Ljava/lang/String;
    const-string v10, "http://168.188.128.36:8080/AppRating/powerEstimator.jsp"

    .local v10, url:Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 554
    invoke-direct/range {v1 .. v10}, Ledu/umich/PowerTutor/ui/PowerViewer;->makeHttpPost(Ljava/lang/String;IIIIIIILjava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v16

    .line 558
    .local v16, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 562
    .local v11, client:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 564
    .local v17, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    .line 565
    .local v21, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid response from server : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 583
    .end local v18           #result:Ljava/lang/String;
    .local v19, result:Ljava/lang/String;
    :goto_0
    return-object v19

    .line 570
    .end local v19           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    :cond_0
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 571
    .local v12, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 573
    .local v13, is:Ljava/io/InputStream;
    new-instance v15, Ljava/io/BufferedReader;

    .line 574
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, v13, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 573
    invoke-direct {v15, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 575
    .local v15, reader:Ljava/io/BufferedReader;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v20, sb:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 577
    .local v14, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    .line 580
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 581
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 583
    .end local v18           #result:Ljava/lang/String;
    .restart local v19       #result:Ljava/lang/String;
    goto :goto_0

    .line 578
    .end local v19           #result:Ljava/lang/String;
    .restart local v18       #result:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private stateChanged()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    if-lt v0, v1, :cond_0

    .line 262
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->layout()V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 364
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerViewer$3;

    invoke-direct {v0, p0, p1}, Ledu/umich/PowerTutor/ui/PowerViewer$3;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;I)V

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 418
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 419
    const-string v1, "uid"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->SeletedUid:I

    .line 420
    const-string v1, "package_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->SeletedPackageName:Ljava/lang/String;

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extra Data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->SeletedUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->SeletedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 426
    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->saveProgress(I)V

    .line 429
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V

    .line 432
    .local v0, mProcessResultThread:Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;
    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerViewer$processResultThread;->start()V

    .line 433
    const-string v1, "PowerViewer"

    const-string v2, "Thread start pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->prefs:Landroid/content/SharedPreferences;

    .line 215
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->uid:I

    .line 217
    iput-boolean v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string v0, "collecting"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    .line 220
    const-string v0, "componentNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;

    .line 221
    const-string v0, "noUidMask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I

    .line 224
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->serviceIntent:Landroid/content/Intent;

    .line 225
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    .line 226
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 343
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    .line 344
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 345
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f07000b

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 347
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 348
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    .line 349
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->PROGRESS_MAX:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 353
    const-string v0, "PowerViewer"

    const-string v1, "onCreateDialog pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    const-string v0, "Options"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 271
    const-string v0, ""

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 272
    const/4 v0, 0x2

    const-string v1, "App Rating"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 273
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v3

    .line 332
    :goto_1
    return v2

    .line 287
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Ledu/umich/PowerTutor/ui/ViewerPreferences;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Ledu/umich/PowerTutor/ui/PowerViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 290
    :pswitch_1
    iget-boolean v4, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    .line 291
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 292
    iget-boolean v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    if-ge v0, v2, :cond_0

    .line 293
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;->reset()V

    .line 294
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    iget-object v4, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 295
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    if-ge v0, v2, :cond_0

    .line 296
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    iget-object v4, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 302
    .end local v0           #i:I
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ledu/umich/PowerTutor/ui/AppChoiceView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Ledu/umich/PowerTutor/ui/PowerViewer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 241
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    if-lt v0, v1, :cond_1

    .line 244
    .end local v0           #i:I
    :cond_0
    iput-object v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    .line 245
    iput-object v3, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    .line 247
    return-void

    .line 242
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 279
    iget-boolean v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    if-eqz v0, :cond_0

    const-string v0, "Pause"

    .line 278
    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 280
    return v2

    .line 279
    :cond_0
    const-string v0, "Resume"

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->handler:Landroid/os/Handler;

    .line 232
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->serviceIntent:Landroid/content/Intent;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 234
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/PowerViewer;->refreshView()V

    .line 235
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 252
    const-string v0, "collecting"

    iget-boolean v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->collecting:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    const-string v0, "componentNames"

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    const-string v0, "noUidMask"

    iget v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    return-void
.end method

.method public refreshView()V
    .locals 19

    .prologue
    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    if-nez v1, :cond_0

    .line 115
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v8, loadingText:Landroid/widget/TextView;
    const-string v1, "Waiting for profiler service..."

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ledu/umich/PowerTutor/ui/PowerViewer;->setContentView(Landroid/view/View;)V

    .line 187
    .end local v8           #loadingText:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->chartLayout:Landroid/widget/LinearLayout;

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->chartLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    move-object/from16 v0, p0

    iget v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->uid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 129
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I

    .line 131
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    .line 132
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v6, v1, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "showTotalPower"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 138
    .local v15, showTotal:Z
    if-eqz v15, :cond_4

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    add-int/2addr v1, v2

    new-array v1, v1, [Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    move-object/from16 v0, p0

    iput-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    .line 140
    const/4 v13, 0x0

    .line 141
    .local v13, pos:I
    if-eqz v15, :cond_5

    const/4 v6, -0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt v6, v1, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->chartLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v2, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 184
    new-instance v14, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v14, scrollView:Landroid/widget/ScrollView;
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->chartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ledu/umich/PowerTutor/ui/PowerViewer;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 133
    .end local v13           #pos:I
    .end local v14           #scrollView:Landroid/widget/ScrollView;
    .end local v15           #showTotal:Z
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I

    const/4 v2, 0x1

    shl-int/2addr v2, v6

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->components:I

    .line 132
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 138
    .restart local v15       #showTotal:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 141
    .restart local v13       #pos:I
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 142
    :cond_6
    const/4 v1, -0x1

    if-eq v6, v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I

    const/4 v2, 0x1

    shl-int/2addr v2, v6

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 141
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 145
    :cond_7
    const/4 v1, -0x1

    if-ne v6, v1, :cond_8

    const-string v12, "Total"

    .line 146
    .local v12, name:Ljava/lang/String;
    :goto_5
    const/4 v1, -0x1

    if-ne v6, v1, :cond_9

    const-wide v1, 0x40a0680000000000L

    :goto_6
    const-wide v17, 0x3ff0cccccccccccdL

    mul-double v10, v1, v17

    .line 148
    .local v10, mxPower:D
    new-instance v3, Lorg/achartengine/model/XYSeries;

    invoke-direct {v3, v12}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, series:Lorg/achartengine/model/XYSeries;
    new-instance v9, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v9}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 150
    .local v9, mseries:Lorg/achartengine/model/XYMultipleSeriesDataset;
    invoke-virtual {v9, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 152
    new-instance v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 153
    .local v4, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v16, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct/range {v16 .. v16}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 154
    .local v16, srenderer:Lorg/achartengine/renderer/XYSeriesRenderer;
    const-wide/16 v1, 0x0

    invoke-virtual {v4, v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 155
    invoke-virtual {v4, v10, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(mW)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;)V

    .line 158
    sget-object v1, Ledu/umich/PowerTutor/ui/PowerPie;->COLORS:[I

    sget-object v2, Ledu/umich/PowerTutor/ui/PowerPie;->COLORS:[I

    array-length v2, v2

    add-int/2addr v2, v6

    .line 159
    sget-object v17, Ledu/umich/PowerTutor/ui/PowerPie;->COLORS:[I

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    rem-int v2, v2, v17

    .line 158
    aget v7, v1, v2

    .line 160
    .local v7, clr:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 161
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillBelowLine(Z)V

    .line 162
    shr-int/lit8 v1, v7, 0x1

    const v2, 0x7f7f7f

    and-int/2addr v1, v2

    .line 163
    const/high16 v2, -0x100

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    .line 162
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillBelowLineColor(I)V

    .line 164
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 166
    new-instance v5, Lorg/achartengine/GraphicalView;

    .line 167
    new-instance v1, Lorg/achartengine/chart/CubicLineChart;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v9, v4, v2}, Lorg/achartengine/chart/CubicLineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;F)V

    .line 166
    move-object/from16 v0, p0

    invoke-direct {v5, v0, v1}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    .line 168
    .local v5, chartView:Landroid/view/View;
    const/16 v1, 0x64

    invoke-virtual {v5, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->chartLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->collectors:[Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    move-object/from16 v17, v0

    new-instance v1, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Ledu/umich/PowerTutor/ui/PowerViewer$ValueCollector;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Landroid/view/View;I)V

    aput-object v1, v17, v13

    .line 176
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 145
    .end local v3           #series:Lorg/achartengine/model/XYSeries;
    .end local v4           #renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .end local v5           #chartView:Landroid/view/View;
    .end local v7           #clr:I
    .end local v9           #mseries:Lorg/achartengine/model/XYMultipleSeriesDataset;
    .end local v10           #mxPower:D
    .end local v12           #name:Ljava/lang/String;
    .end local v16           #srenderer:Lorg/achartengine/renderer/XYSeriesRenderer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;

    aget-object v12, v1, v6

    goto/16 :goto_5

    .line 146
    .restart local v12       #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/umich/PowerTutor/ui/PowerViewer;->componentsMaxPower:[I

    aget v1, v1, v6

    int-to-double v1, v1

    goto/16 :goto_6
.end method

.method public saveProgress(I)V
    .locals 2
    .parameter "arTime"

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->showDialogSafely(I)V

    .line 406
    const-string v0, "PowerViewer"

    const-string v1, "saveProgress pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method public showDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 384
    new-instance v0, Ledu/umich/PowerTutor/ui/PowerViewer$4;

    invoke-direct {v0, p0, p1}, Ledu/umich/PowerTutor/ui/PowerViewer$4;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;I)V

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method
