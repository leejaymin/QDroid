.class final Lcom/mobclix/android/sdk/ai;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/app/ProgressDialog;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/VideoView;

.field private p:Landroid/widget/MediaController;

.field private q:Landroid/widget/ImageView;

.field private r:Z

.field private s:Z


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->l:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->m:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->n:Landroid/widget/ImageView;

    iput-boolean v6, p0, Lcom/mobclix/android/sdk/ai;->r:Z

    iput-boolean v6, p0, Lcom/mobclix/android/sdk/ai;->s:Z

    iput-object p2, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "videoUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    :try_start_2
    const-string v1, "landingUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    :try_start_3
    const-string v1, "tagline"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    :try_start_4
    const-string v1, "taglineImageUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    :try_start_5
    const-string v1, "buttons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v6

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v3

    if-lt v2, v3, :cond_0

    :goto_5
    :try_start_6
    const-string v1, "trackingUrls"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v6

    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v2

    if-lt v1, v2, :cond_1

    :goto_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ai;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/mobclix/android/sdk/ai;->b()V

    return-void

    :cond_0
    :try_start_7
    iget-object v3, p0, Lcom/mobclix/android/sdk/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "imageUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/mobclix/android/sdk/ai;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1
    :try_start_8
    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/ai;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ai;->m:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/ai;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ai;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/16 v2, 0x400

    const/4 v1, -0x1

    const/4 v3, -0x2

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    const/16 v2, 0x539

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setId(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->p:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->p:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->p:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/ai;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/mobclix/android/sdk/aj;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/aj;-><init>(Lcom/mobclix/android/sdk/ai;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ai;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#CC666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v1, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v2, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    iget-object v3, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v3, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v4, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ai;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/j;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->c:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/ak;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/ak;-><init>(Lcom/mobclix/android/sdk/ai;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_5
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/ai;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mobclix/android/sdk/j;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ai;->f:Ljava/lang/String;

    new-instance v4, Lcom/mobclix/android/sdk/al;

    invoke-direct {v4, p0}, Lcom/mobclix/android/sdk/al;-><init>(Lcom/mobclix/android/sdk/ai;)V

    invoke-direct {v2, v3, v4}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/j;

    new-instance v4, Lcom/mobclix/android/sdk/am;

    invoke-direct {v4, p0}, Lcom/mobclix/android/sdk/am;-><init>(Lcom/mobclix/android/sdk/ai;)V

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/j;

    new-instance v4, Lcom/mobclix/android/sdk/an;

    invoke-direct {v4, p0}, Lcom/mobclix/android/sdk/an;-><init>(Lcom/mobclix/android/sdk/ai;)V

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/ai;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/mobclix/android/sdk/ai;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/mobclix/android/sdk/ai;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ai;->r:Z

    return v0
.end method

.method static synthetic g(Lcom/mobclix/android/sdk/ai;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->m:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/mobclix/android/sdk/ai;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ai;->r:Z

    return-void
.end method

.method static synthetic i(Lcom/mobclix/android/sdk/ai;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v4, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    const-string v1, "#CC666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x1080014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ai;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v1, v3

    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ai;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ai;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v5, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    iget-object v5, p0, Lcom/mobclix/android/sdk/ai;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v5, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/ao;

    iget-object v4, p0, Lcom/mobclix/android/sdk/ai;->b:Landroid/app/Activity;

    invoke-direct {v3, p0, v4, v0}, Lcom/mobclix/android/sdk/ao;-><init>(Lcom/mobclix/android/sdk/ai;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->o:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ai;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ai;->s:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ai;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
