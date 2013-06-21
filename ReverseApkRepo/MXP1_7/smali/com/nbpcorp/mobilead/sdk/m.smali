.class public final Lcom/nbpcorp/mobilead/sdk/m;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static ㅼ꽑嫄:[Ljava/lang/String;

.field private static synthetic 洹몄쓽:[I


# instance fields
.field private ㅼ꽑嫄곗쓽:Ljava/lang/String;

.field private ㅼ젣濡:Z

.field private ㅼ쬆:Ljava/lang/String;

.field private 寃껋씠:Lry;

.field private 弱밧:Landroid/content/Context;

.field private 弱방떙:Lrs;

.field private 怨:Ljava/lang/String;

.field private 洹:Landroid/webkit/WebView;

.field private 洹멸:Landroid/os/Handler;

.field private 湲고빐:Ljava/lang/String;

.field 癤욱븳援:Lrq;

.field 궗:Landroid/os/HandlerThread;

.field private 꾨뱾:Lrt;

.field private 꾩:Landroid/os/Handler;

.field private 대떎:Ljava/lang/String;

.field private 대쫫:Landroid/webkit/WebView;

.field private 덉넚:I

.field private 덉쓣:J

.field private 덉쓬:Landroid/graphics/Bitmap;

.field private 듦낵:Landroid/graphics/drawable/Drawable;

.field private 떎:I

.field private 뚮Ц:Landroid/widget/ImageView;

.field private 뚮벏:Ljava/lang/Runnable;

.field private 뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

.field private 뚮젮議뚮떎怨:I

.field private 롩퐢:Z

.field private 먮:Z

.field private 먯껜蹂대떎:Lrv;

.field private 먯꽌:Z

.field private final 몃:Ljava/lang/String;

.field private 몃Ъ:Landroid/webkit/WebView;

.field private 붿슧:Lrr;

.field private 쇰뒗:Landroid/webkit/WebView;

.field private 앸ぐ:Ljava/lang/String;

.field private 쥌:Ljava/lang/String;

.field private 留먰븷:I

.field private 紐낆옱:Z

.field private final 李:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "query"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "birth"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "geo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    new-instance v0, Lrq;

    invoke-direct {v0, p0, v2}, Lrq;-><init>(Lcom/nbpcorp/mobilead/sdk/m;Lrq;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    iput-boolean v3, p0, Lcom/nbpcorp/mobilead/sdk/m;->먮:Z

    iput v3, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮議뚮떎怨:I

    iput v3, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓣:J

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱:Z

    iput-boolean v4, p0, Lcom/nbpcorp/mobilead/sdk/m;->롩퐢:Z

    const-string v0, "http://adimg3.search.naver.net/mobilejs/mobilead_sdk_min.js"

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ쬆:Ljava/lang/String;

    sget-object v0, Lrs;->癤욱븳援:Lrs;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱방떙:Lrs;

    const-string v0, ""

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대떎:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄곗쓽:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->앸ぐ:Ljava/lang/String;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    const-string v0, "OK"

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->李:Ljava/lang/String;

    const-string v0, "TEL ERROR"

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ젣濡:Z

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    iput-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    iput-boolean v4, p0, Lcom/nbpcorp/mobilead/sdk/m;->롩퐢:Z

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lrq;->쇰뒗:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ젣濡:Z

    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    const/4 v0, 0x4

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->떎:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Ad Update Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    iget v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->떎:I

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ()V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    new-instance v1, Lsk;

    invoke-direct {v1, p0}, Lsk;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lrr;->癤욱븳援:Lrr;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    return-void
.end method

.method private ㅼ꽑嫄(I)V
    .locals 4

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱()V

    new-instance v0, Lrn;

    invoke-direct {v0, p0}, Lrn;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->롩퐢()V

    return-void
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(Ljava/lang/String;)V

    return-void
.end method

.method private ㅼ꽑嫄(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_0

    const/high16 v0, 0x1000

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "TEL ERROR"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lsr;

    invoke-direct {v2, p0}, Lsr;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    goto :goto_0
.end method

.method private 寃껋씠()Z
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private 弱밧(I)V
    .locals 4

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱()V

    new-instance v0, Lro;

    invoke-direct {v0, p0}, Lro;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic 弱밧(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->洹()V

    return-void
.end method

.method public static synthetic 弱밧(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗(Ljava/lang/String;)V

    return-void
.end method

.method private 弱밧(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v1, :cond_0

    const-string v1, "NBPMOBILEAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_1

    const/high16 v0, 0x1000

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    goto :goto_0
.end method

.method private declared-synchronized 弱밧(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->롩퐢:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lrr;->궗:Lrr;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    iget-wide v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓣:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    add-int/lit16 v0, v0, -0x3e8

    if-gez v0, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_1

    const-string v0, "NBPMOBILEAD"

    const-string v1, "Request Ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->붿슧()V

    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsp;

    invoke-direct {v1, p0}, Lsp;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(I)V

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsq;

    invoke-direct {v1, p0}, Lsq;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_6

    const-string v0, "NBPMOBILEAD"

    const-string v1, "Request Ad But Not Enough Refresh Time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓣:J

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(I)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_8

    const-string v0, "NBPMOBILEAD"

    const-string v1, "Screen is Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v0, 0x7530

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static synthetic 洹(Lcom/nbpcorp/mobilead/sdk/m;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    return-object v0
.end method

.method private 洹()V
    .locals 3

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v0, v0, Lrq;->대쫫:Lrx;

    const-string v1, "Android"

    iput-object v1, v0, Lrx;->癤욱븳援:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v0, v0, Lrq;->대쫫:Lrx;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lrx;->궗:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v0, v0, Lrq;->대쫫:Lrx;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lrx;->먯꽌:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v0, v0, Lrq;->대쫫:Lrx;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lrx;->ㅼ꽑嫄:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v1, v1, Lrq;->대쫫:Lrx;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lrx;->弱밧:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v1, v1, Lrq;->대쫫:Lrx;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Lrx;->쇰뒗:I

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v1, v1, Lrq;->대쫫:Lrx;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Lrx;->대쫫:I

    :try_start_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v1, v1, Lrq;->대쫫:Lrx;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lrx;->洹:Ljava/lang/String;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v1, v1, Lrq;->대쫫:Lrx;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v1, Lrx;->몃Ъ:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lsv;

    invoke-direct {v0, p0}, Lsv;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-wide/32 v1, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯껜蹂대떎:Lrv;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾨뱾:Lrt;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;I)V
    .locals 0

    iput p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(Z)V

    return-void
.end method

.method private 癤욱븳援(Lrw;Ljava/net/URI;)V
    .locals 4

    const/16 v3, 0x7530

    invoke-virtual {p2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/nbpcorp/mobilead/sdk/m;->대쫫()[I

    move-result-object v0

    invoke-virtual {p1}, Lrw;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lrs;->癤욱븳援(Ljava/lang/Integer;)Lrs;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱방떙:Lrs;

    const-string v0, "report"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대떎:Ljava/lang/String;

    const-string v0, "report_dn"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄곗쓽:Ljava/lang/String;

    const-string v0, "landing"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "download"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->앸ぐ:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v2, Ljava/lang/Integer;

    const-string v0, "type"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lrs;->癤욱븳援(Ljava/lang/Integer;)Lrs;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱방떙:Lrs;

    const-string v0, "landing"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    :try_start_2
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱()V

    new-instance v2, Ljava/lang/Integer;

    const-string v0, "ret"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    new-instance v2, Ljava/lang/Integer;

    const-string v0, "interval"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮議뚮떎怨:I

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮議뚮떎怨:I

    if-ge v0, v3, :cond_1

    const/16 v0, 0x7530

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮議뚮떎怨:I

    :cond_1
    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮議뚮떎怨:I

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓣:J

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsm;

    invoke-direct {v1, p0}, Lsm;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->궗:Lrr;

    if-ne v0, v1, :cond_5

    sget-object v0, Lrr;->먯꽌:Lrr;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_4

    const-string v0, "NBPMOBILEAD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lso;

    invoke-direct {v1, p0}, Lso;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->ㅼ꽑嫄:Lrr;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->弱밧:Lrr;

    if-ne v0, v1, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_3

    const-string v0, "NBPMOBILEAD"

    const-string v1, "STOP When Request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State Error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBPMOBILEAD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsn;

    invoke-direct {v1, p0}, Lsn;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private 癤욱븳援(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic 癤욱븳援(Lcom/nbpcorp/mobilead/sdk/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    return v0
.end method

.method private static 궗(Ljava/lang/String;)Ljava/util/Map;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    array-length v5, v3

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_0

    return-object v4

    :cond_0
    aget-object v0, v3, v1

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v2

    const-string v0, ""

    array-length v8, v6

    if-le v8, v9, :cond_1

    aget-object v0, v6, v9

    :cond_1
    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic 궗(Lcom/nbpcorp/mobilead/sdk/m;)Lrs;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱방떙:Lrs;

    return-object v0
.end method

.method public static synthetic 궗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->대쫫(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 꾨뱾(Lcom/nbpcorp/mobilead/sdk/m;)Lry;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    return-object v0
.end method

.method private 꾨뱾()V
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic 대쫫(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц()V

    return-void
.end method

.method public static synthetic 대쫫(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->湲고빐:Ljava/lang/String;

    return-void
.end method

.method private 대쫫(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR:Url Type is not Matching("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱방떙:Lrs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_1

    const/high16 v0, 0x1000

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    goto :goto_0
.end method

.method static synthetic 대쫫()[I
    .locals 3

    sget-object v0, Lcom/nbpcorp/mobilead/sdk/m;->洹몄쓽:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lrw;->values()[Lrw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lrw;->癤욱븳援:Lrw;

    invoke-virtual {v1}, Lrw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lrw;->먯꽌:Lrw;

    invoke-virtual {v1}, Lrw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lrw;->궗:Lrw;

    invoke-virtual {v1}, Lrw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/nbpcorp/mobilead/sdk/m;->洹몄쓽:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private 덉쓣()V
    .locals 2

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    const-string v1, "onRequestAdFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lrp;

    invoke-direct {v1, p0}, Lrp;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsl;

    invoke-direct {v1, p0}, Lsl;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(I)V

    return-void
.end method

.method private 뚮Ц()V
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->듦낵:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓬:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic 뚮Ц(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷()V

    return-void
.end method

.method private 뚮벏()Z
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method private 뚮젮議뚮떎怨()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ젣濡:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private 롩퐢()V
    .locals 3

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->怨:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->湲고빐:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->怨:Ljava/lang/String;

    invoke-static {v0}, Lrw;->癤욱븳援(Ljava/lang/String;)Lrw;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->湲고빐:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Lrw;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NBPMOBILEAD"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "NBPMOBILEAD"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic 먮(Lcom/nbpcorp/mobilead/sdk/m;)I
    .locals 1

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    return v0
.end method

.method private 먮()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ko\" lang=\"ko\"><head>"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<meta name=\"viewport\" content=\"user-scalable=no, target-densitydpi=medium-dpi\" />"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<meta name=\"format-detection\" content=\"telephone=no, address=no, email=no\" />"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<meta http-equiv=\"Pragma\" content=\"no-cache\" /> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=euc-kr\" />"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<style>*{-webkit-touch-callout:none;user-select:none;-webkit-user-select:none;-webkit-user-drag:none;} body{margin:0;padding:0;}</style>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<script type=\"text/javascript\" src=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ쬆:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"></script>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</head> <body>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<div id=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nbp_ad_1234"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"></div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<script type=\"text/javascript\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "new NBP_MOBILEAD({"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdk_ver:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1.1.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "div_id:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nbp_ad_1234"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string v0, "cid:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->癤욱븳援:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const-string v0, "test:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-boolean v2, v2, Lrq;->궗:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sendToApp: function(key, value) { prompt(key, value); },"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1
    const-string v0, "os:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->癤욱븳援:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    const-string v0, "os_ver:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->궗:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_2
    const-string v0, "locale:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->먯꽌:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v0, "device:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    const-string v0, "carrier:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->弱밧:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const-string v0, "res_w:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget v2, v2, Lrx;->쇰뒗:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "res_h:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget v2, v2, Lrx;->대쫫:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pkg:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->洹:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pkg_ver:\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v2, v2, Lrq;->대쫫:Lrx;

    iget-object v2, v2, Lrx;->몃Ъ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v0, v0, Lrq;->쇰뒗:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ie:\"utf-8\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "});"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</script>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body> </html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v4, v4, Lrq;->쇰뒗:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method private 먯껜蹂대떎()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lrz;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Lsa;->癤욱븳援(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->듦낵:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lrz;->궗:Ljava/lang/String;

    invoke-static {v1}, Lsa;->癤욱븳援(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓬:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsu;

    invoke-direct {v1, p0}, Lsu;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static synthetic 먯껜蹂대떎(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->덉쓣()V

    return-void
.end method

.method public static synthetic 먯꽌(Lcom/nbpcorp/mobilead/sdk/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic 먯꽌(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄(Ljava/lang/String;)V

    return-void
.end method

.method private 먯꽌(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    const-class v2, Lcom/nbpcorp/mobilead/sdk/MobileAdBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/nbpcorp/mobilead/sdk/m;->대쫫(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic 몃Ъ(Lcom/nbpcorp/mobilead/sdk/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->쥌:Ljava/lang/String;

    return-object v0
.end method

.method private 몃Ъ()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->꾨뱾()V

    new-instance v0, Lrv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrv;-><init>(Lcom/nbpcorp/mobilead/sdk/m;Lrv;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯껜蹂대떎:Lrv;

    new-instance v0, Lrt;

    invoke-direct {v0, p0}, Lrt;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾨뱾:Lrt;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Landroid/webkit/WebView;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    return-void
.end method

.method private 붿슧()V
    .locals 2

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->먮()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->쥌:Ljava/lang/String;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->꾩:Landroid/os/Handler;

    new-instance v1, Lsw;

    invoke-direct {v1, p0}, Lsw;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic 붿슧(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮議뚮떎怨()V

    return-void
.end method

.method public static synthetic 쇰뒗(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->먯껜蹂대떎()V

    return-void
.end method

.method public static synthetic 쇰뒗(Lcom/nbpcorp/mobilead/sdk/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->怨:Ljava/lang/String;

    return-void
.end method

.method private 쇰뒗(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window.__nbp_mobilead_callback."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nbp_ad_1234"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".report(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->대떎:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check(landing):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->弱밧:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window.__nbp_mobilead_callback."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "nbp_ad_1234"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".report(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ꽑嫄곗쓽:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌:Z

    if-eqz v0, :cond_3

    const-string v0, "NBPMOBILEAD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check(download):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->앸ぐ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->앸ぐ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nbpcorp/mobilead/sdk/m;->弱밧(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private 留먰븷()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->ㅼ젣濡:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->쇰뒗:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->대쫫:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private 紐낆옱()V
    .locals 2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮벏:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮Ц:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v1, v1, Lrq;->먯꽌:I

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v2, v2, Lrq;->ㅼ꽑嫄:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v1, v1, Lrq;->먯꽌:I

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v2, v2, Lrq;->ㅼ꽑嫄:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/WebView;->layout(IIII)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v1, v1, Lrq;->먯꽌:I

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v2, v2, Lrq;->ㅼ꽑嫄:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/WebView;->layout(IIII)V

    return-void
.end method

.method public ㅼ꽑嫄()I
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v0, v0, Lrq;->ㅼ꽑嫄:I

    return v0
.end method

.method public ㅼ꽑嫄(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->롩퐢:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷()V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    const-string v1, "onReceive(ERROR_INVALID_REGION)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lry;->癤욱븳援(I)V

    :cond_1
    return-void
.end method

.method public 弱밧()I
    .locals 1

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->떎:I

    return v0
.end method

.method public 癤욱븳援()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget-object v0, v0, Lrq;->癤욱븳援:Ljava/lang/String;

    return-object v0
.end method

.method public 癤욱븳援(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iput p1, v0, Lrq;->먯꽌:I

    return-void
.end method

.method public 癤욱븳援(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3

    iget-object v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->몃Ъ:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iput-object p1, v0, Lrq;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public 癤욱븳援(Lry;)V
    .locals 1

    iput-object p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱()V

    sget-object v0, Lrr;->弱밧:Lrr;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iput-boolean p1, v0, Lrq;->궗:Z

    return-void
.end method

.method public 궗(I)V
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iput p1, v0, Lrq;->ㅼ꽑嫄:I

    return-void
.end method

.method public 궗(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먮:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->ㅼ꽑嫄:Lrr;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_0

    const-string v0, "NBPMOBILEAD"

    const-string v1, "Autostart Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    new-instance v1, Lss;

    invoke-direct {v1, p0, p1}, Lss;-><init>(Lcom/nbpcorp/mobilead/sdk/m;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->癤욱븳援:Lrr;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->ㅼ꽑嫄:Lrr;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->弱밧:Lrr;

    if-ne v0, v1, :cond_1

    :cond_3
    const-string v0, "NBPMOBILEAD"

    const-string v1, "MobileAd AutoRefresh Start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->洹멸:Landroid/os/Handler;

    new-instance v1, Lst;

    invoke-direct {v1, p0, p1}, Lst;-><init>(Lcom/nbpcorp/mobilead/sdk/m;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public 궗()Z
    .locals 2

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉넚:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 먯꽌()I
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->癤욱븳援:Lrq;

    iget v0, v0, Lrq;->먯꽌:I

    return v0
.end method

.method public 먯꽌(I)V
    .locals 3

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getPriority()I

    move-result v1

    :try_start_0
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    invoke-virtual {v0, p1}, Landroid/os/HandlerThread;->setPriority(I)V

    iput p1, p0, Lcom/nbpcorp/mobilead/sdk/m;->떎:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->궗:Landroid/os/HandlerThread;

    invoke-virtual {v2, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public 먯꽌(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->먯꽌:Lrr;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    sget-object v1, Lrr;->궗:Lrr;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援:Z

    if-eqz v0, :cond_1

    const-string v0, "NBPMOBILEAD"

    const-string v1, "AutoStop Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lrr;->ㅼ꽑嫄:Lrr;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱()V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->먮:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nbpcorp/mobilead/sdk/m;->덉쓣:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    iget v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    if-gez v0, :cond_3

    iput v4, p0, Lcom/nbpcorp/mobilead/sdk/m;->留먰븷:I

    :cond_3
    iput-boolean v4, p0, Lcom/nbpcorp/mobilead/sdk/m;->먮:Z

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->寃껋씠:Lry;

    if-eqz v0, :cond_4

    const-string v0, "NBPMOBILEAD"

    const-string v1, "MobileAd AutoRefresh Stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nbpcorp/mobilead/sdk/m;->紐낆옱()V

    sget-object v0, Lrr;->弱밧:Lrr;

    iput-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->붿슧:Lrr;

    goto :goto_0
.end method

.method public 쇰뒗()Landroid/webkit/WebSettings$RenderPriority;
    .locals 1

    iget-object v0, p0, Lcom/nbpcorp/mobilead/sdk/m;->뚮젮以:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method
