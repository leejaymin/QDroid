.class public Lcom/mxtech/videoplayer/ActivityVideoList;
.super Liw;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lef;
.implements Llx;


# static fields
.field public static 꾨뱾:J


# instance fields
.field private ㅼ꽑嫄곗쓽:Ljava/util/ArrayList;

.field private ㅼ쬆:Z

.field private 寃껋씠:Z

.field private 弱방떙:Z

.field private 대떎:I

.field private 덉쓣:I

.field private final 뚮Ц:Landroid/os/Handler;

.field private 뚮벏:Lky;

.field private 뚮젮議뚮떎怨:Z

.field private 롩퐢:Lgo;

.field private 먮:Lcom/mxtech/ExternalStorageMonitor;

.field private 붿슧:Landroid/widget/ViewAnimator;

.field private 留먰븷:I

.field private 紐낆옱:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Liw;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    new-instance v0, Lcom/mxtech/ExternalStorageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/mxtech/ExternalStorageMonitor;-><init>(Landroid/app/Activity;ZLef;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->먮:Lcom/mxtech/ExternalStorageMonitor;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷:I

    return-void
.end method

.method private ㅼ쬆()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0}, Lma;->대쫫()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private 寃껋씠()V
    .locals 3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lkx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkx;-><init>(Lcom/mxtech/videoplayer/ActivityVideoList;Lkx;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnt;->hardware_acceleration:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lnt;->ask_default_hardware_decoder:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private 弱방떙()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->弱방떙:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    iput-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->弱방떙:Z

    iput-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆:Z

    invoke-virtual {p0, p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoList;Lky;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏:Lky;

    return-void
.end method

.method private 癤욱븳援(Lma;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lma;Z)V

    return-void
.end method

.method private 癤욱븳援(Lma;Z)V
    .locals 8

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->궗:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lma;->癤욱븳援:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lma;->먯꽌()V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, p0}, Lma;->癤욱븳援(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->registerForContextMenu(Landroid/view/View;)V

    const v4, 0x1020004

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1, v0}, Lma;->癤욱븳援(Landroid/widget/ListView;)Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    if-eqz v3, :cond_3

    if-eqz p2, :cond_6

    iget-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨:Z

    if-nez v1, :cond_6

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const v4, 0x1030001

    invoke-virtual {p0, v5, v1, v2, v4}, Lcom/mxtech/videoplayer/ActivityVideoList;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->showNext()V

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lma;

    invoke-virtual {v1}, Lma;->쇰뒗()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->궗(Lma;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v3}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_2
    iput-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {p1}, Lma;->癤욱븳援()V

    return-void

    :cond_4
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v7, p0, v6}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v7, p0, v6}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v5}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v5}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lma;->궗()V

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0xb8t 0x0t 0x1t 0x1t
        0xb9t 0x0t 0x1t 0x1t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityVideoList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->궗:Z

    return v0
.end method

.method public static synthetic 궗(Lcom/mxtech/videoplayer/ActivityVideoList;)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏()V

    return-void
.end method

.method private 궗(Lma;)V
    .locals 1

    iget-boolean v0, p1, Lma;->癤욱븳援:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lma;->ㅼ꽑嫄()V

    :cond_0
    invoke-virtual {p1}, Lma;->몃Ъ()V

    return-void
.end method

.method private static 덉쓣()V
    .locals 6

    const-wide/16 v4, 0x3c

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "new_tagged_period"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J

    goto :goto_0
.end method

.method private 뚮벏()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏:Lky;

    if-nez v0, :cond_0

    new-instance v0, Lky;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lky;-><init>(Lcom/mxtech/videoplayer/ActivityVideoList;Lky;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏:Lky;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏:Lky;

    sget-object v1, Lms;->대떎:[Ljava/io/File;

    invoke-virtual {v0, v1}, Lky;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->쇰뒗()V

    :cond_0
    return-void
.end method

.method private 뚮젮議뚮떎怨()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "query"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, v0}, Lql;->ㅼ꽑嫄(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lqp;

    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    invoke-direct {v1, p0, v3, v0}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    const-string v1, "no_stack"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱()V

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lma;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    new-instance v0, Lqp;

    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    invoke-direct {v0, p0, v3, v1}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_6
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "group_by_folder"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Llp;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    invoke-direct {v0, p0, v1}, Llp;-><init>(Llx;Lmb;)V

    goto :goto_2

    :cond_7
    new-instance v1, Lqp;

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    invoke-direct {v1, p0, v2, v0}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_8
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lqp;

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, v3}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private 롩퐢()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0}, Lma;->洹()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic 먯꽌(Lcom/mxtech/videoplayer/ActivityVideoList;)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->寃껋씠()V

    return-void
.end method

.method private 留먰븷()V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->궗(Lma;)V

    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const v3, 0x1030001

    invoke-virtual {p0, v4, v0, v1, v3}, Lcom/mxtech/videoplayer/ActivityVideoList;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showPrevious()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0}, Lma;->癤욱븳援()V

    return-void

    :cond_0
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, p0, v5}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, p0, v5}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v4}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :array_0
    .array-data 0x4
        0xbat 0x0t 0x1t 0x1t
        0xbbt 0x0t 0x1t 0x1t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private 紐낆옱()V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    iget-boolean v2, v0, Lma;->癤욱븳援:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lma;->ㅼ꽑嫄()V

    :cond_1
    invoke-virtual {v0}, Lma;->몃Ъ()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a_(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->먮:Lcom/mxtech/ExternalStorageMonitor;

    iget-object v0, v0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    invoke-static {v0}, Lee;->癤욱븳援(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/mxtech/videoplayer/ActivityMessenger;->癤욱븳援(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->finish()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Liw;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->먯꽌()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱밧()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p1}, Lma;->癤욱븳援(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Liw;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p1}, Lma;->癤욱븳援(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1}, Liw;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/high16 v5, 0x100

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Liw;->onCreate(Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    iput-boolean v8, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨:Z

    :goto_0
    sget v1, Lno;->listSwitcher:I

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "thumbnail"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->寃껋씠:Z

    sget-wide v1, Lcom/mxtech/videoplayer/ActivityVideoList;->꾨뱾:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mxtech/videoplayer/ActivityVideoList;->덉쓣()V

    :cond_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/mxtech/app/MXApplication;

    invoke-virtual {v1, p0}, Lcom/mxtech/app/MXApplication;->癤욱븳援(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨:Z

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨()V

    :cond_5
    :goto_2
    sget v1, Lno;->refresh:I

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lkv;

    invoke-direct {v2, p0}, Lkv;-><init>(Lcom/mxtech/videoplayer/ActivityVideoList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mxtech/videoplayer/App;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/mxtech/videoplayer/App;->ㅼ꽑嫄()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v5, 0x2

    :goto_3
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    sget-object v1, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    new-instance v6, Llb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    invoke-direct {v6, v2, p0, v9}, Llb;-><init>(Lcom/mxtech/videoplayer/App;Landroid/app/Activity;Lfm;)V

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lfh;->癤욱븳援(Landroid/content/Context;Lfm;Landroid/content/pm/PackageInfo;ILandroid/content/DialogInterface$OnClickListener;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mxtech/videoplayer/L;->洹:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "omxdecoder"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v8

    :goto_4
    sget-object v2, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    iget v2, v2, Lfh;->弱밧:I

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, v3, :cond_7

    sget-object v2, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Lfh;->궗(I)V

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    new-instance v2, Lkw;

    invoke-direct {v2, p0}, Lkw;-><init>(Lcom/mxtech/videoplayer/ActivityVideoList;)V

    invoke-static {p0, v1, v2}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/app/Activity;Lfm;Landroid/content/DialogInterface$OnDismissListener;)V

    move v1, v7

    :cond_7
    :goto_5
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->寃껋씠()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_8
    const-string v1, "list_classes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v1, "list_uris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    array-length v1, v3

    if-lez v1, :cond_b

    array-length v1, v3

    array-length v2, v4

    if-ne v1, v2, :cond_b

    array-length v5, v3

    move v1, v7

    move v2, v7

    :goto_6
    if-ge v1, v5, :cond_5

    aget-object v6, v3, v1

    const-class v9, Lqp;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v6, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    aget-object v9, v4, v2

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v6, v9}, Lqp;->癤욱븳援(Llx;Lmb;Landroid/net/Uri;)Lqp;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lma;Z)V

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    const-class v9, Llp;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Llp;

    iget-object v9, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    invoke-direct {v6, p0, v9}, Llp;-><init>(Llx;Lmb;)V

    invoke-direct {p0, v6, v7}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lma;Z)V

    goto :goto_7

    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨()V

    goto/16 :goto_2

    :cond_c
    move v5, v7

    goto/16 :goto_3

    :cond_d
    move v1, v7

    goto/16 :goto_4

    :cond_e
    :try_start_1
    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    invoke-static {p0, v2}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/app/Activity;Lfm;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Liw;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p1, p2, p3}, Lma;->癤욱븳援(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Liw;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱()V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱방떙()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Liw;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p2, p4, p5, p3}, Lma;->癤욱븳援(Landroid/view/View;JI)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mxtech/videoplayer/ActivityVideoList;->setIntent(Landroid/content/Intent;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷:I

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱밧()V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lno;->open_url:I

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lli;

    invoke-direct {v2, p0}, Lli;-><init>(Lcom/mxtech/app/ActivityBase;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    sget v2, Lno;->media_scan:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Liw;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->먮:Lcom/mxtech/ExternalStorageMonitor;

    invoke-virtual {v0}, Lcom/mxtech/ExternalStorageMonitor;->궗()V

    invoke-super {p0}, Liw;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/App;

    invoke-virtual {v0, p1}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Liw;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Liw;->onResume()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->먮:Lcom/mxtech/ExternalStorageMonitor;

    invoke-virtual {v0}, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->먮:Lcom/mxtech/ExternalStorageMonitor;

    iget-object v0, v0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    invoke-static {v0}, Lee;->癤욱븳援(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/mxtech/videoplayer/ActivityMessenger;->癤욱븳援(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const-string v0, "list_classes"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "list_uris"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-super {p0, p1}, Liw;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0}, Lma;->弱밧()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    if-nez v5, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connected to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lgp;->癤욱븳援(Landroid/os/IBinder;)Lgo;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆:Z

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄곗쓽:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄곗쓽:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnected from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Liw;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "group_by_folder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱밧()V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮젮議뚮떎怨()V

    goto :goto_0

    :sswitch_1
    const-string v0, "video_scan_roots"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(IZ)V

    goto :goto_0

    :sswitch_2
    const-string v0, "new_tagged_period"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mxtech/videoplayer/ActivityVideoList;->덉쓣()V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢()V

    goto :goto_0

    :sswitch_3
    const-string v0, "thumbnail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->寃껋씠:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->궗()V

    goto :goto_0

    :sswitch_4
    const-string v0, "subtitle_folder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(IZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_0
        0x6e -> :sswitch_2
        0x73 -> :sswitch_4
        0x74 -> :sswitch_3
        0x76 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Liw;->onStart()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    iget v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    iget v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷:I

    iget v2, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->덉쓣:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    iget-boolean v2, v0, Lma;->癤욱븳援:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lma;->먯꽌()V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷:I

    iget-object v0, p0, Liw;->몃Ъ:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->덉쓣:I

    :goto_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏:Lky;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮벏:Lky;

    invoke-virtual {v0}, Lky;->癤욱븳援()V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lli;->癤욱븳援()V

    :cond_1
    :goto_2
    invoke-super {p0}, Liw;->onStop()V

    return-void

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->留먰븷:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    iget-boolean v2, v0, Lma;->癤욱븳援:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lma;->ㅼ꽑嫄()V

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->紐낆옱:Ljava/lang/ref/WeakReference;

    goto :goto_2
.end method

.method public bridge synthetic ㅼ꽑嫄()V
    .locals 0

    invoke-super {p0}, Liw;->ㅼ꽑嫄()V

    return-void
.end method

.method public bridge synthetic 弱밧()V
    .locals 0

    invoke-super {p0}, Liw;->弱밧()V

    return-void
.end method

.method public 洹()Z
    .locals 1

    iget-boolean v0, p0, Liw;->궗:Z

    return v0
.end method

.method public 癤욱븳援(Lgo;)Lgo;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    :cond_0
    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    invoke-interface {v3}, Lgo;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    monitor-exit p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    :cond_3
    iget-boolean v3, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆:Z

    if-nez v3, :cond_7

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mxtech/media/service/FFService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "ffmpeg_path"

    sget-object v5, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v4, "codec_lib"

    sget-object v5, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "neon"

    sget-object v5, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v5, v5, Lgt;->弱밧:I

    if-ne v5, v1, :cond_5

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x81

    invoke-virtual {p0, v3, p0, v1}, Lcom/mxtech/videoplayer/ActivityVideoList;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v2, "FF Service binding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->弱방떙:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->弱방떙:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆:Z

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-eq v1, v2, :cond_1

    :goto_2
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    :cond_8
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->롩퐢:Lgo;

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public 癤욱븳援(IZ)V
    .locals 4

    const/16 v3, 0x64

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->먮()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected 癤욱븳援(JI)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p1, p2, p3}, Lma;->癤욱븳援(JI)V

    :cond_0
    return-void
.end method

.method public bridge synthetic 癤욱븳援(Lcom/mxtech/widget/ListRow;)V
    .locals 0

    invoke-super {p0, p1}, Liw;->癤욱븳援(Lcom/mxtech/widget/ListRow;)V

    return-void
.end method

.method public 癤욱븳援(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱밧()V

    new-instance v0, Lqp;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->洹:Lmb;

    invoke-direct {v0, p0, v1, p1}, Lqp;-><init>(Llx;Lmb;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援(Lma;)V

    return-void
.end method

.method public 癤욱븳援(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대쫫:Lcom/mxtech/widget/MaxTitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/mxtech/widget/MaxTitleBar;->setTitle(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public declared-synchronized 癤욱븳援(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄곗쓽:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄곗쓽:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ꽑嫄곗쓽:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected 癤욱븳援([J[I)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p1, p2}, Lma;->癤욱븳援([J[I)V

    :cond_0
    return-void
.end method

.method protected 궗(JI)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    invoke-virtual {v0, p1, p2, p3}, Lma;->궗(JI)V

    :cond_0
    return-void
.end method

.method public declared-synchronized 궗(Lgo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->대떎:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->弱방떙()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 꾨뱾()Lfm;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->癤욱븳援:Lfm;

    return-object v0
.end method

.method public bridge synthetic 대쫫()V
    .locals 0

    invoke-super {p0}, Liw;->대쫫()V

    return-void
.end method

.method public 뚮Ц()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    return-object v0
.end method

.method public 먮()Z
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public 먯껜蹂대떎()Lcom/mxtech/app/ActivityBase;
    .locals 0

    return-object p0
.end method

.method public 몃Ъ()Lma;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->붿슧:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lma;

    goto :goto_0
.end method

.method public 붿슧()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityVideoList;->뚮Ц:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/ActivityVideoList;->ㅼ쬆()V

    return-void
.end method

.method public bridge synthetic 쇰뒗()V
    .locals 0

    invoke-super {p0}, Liw;->쇰뒗()V

    return-void
.end method
