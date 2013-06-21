.class public Lcom/rubycell/pianisthd/SongListActivity;
.super Landroid/app/Activity;


# static fields
.field private static H:Ljava/lang/String;

.field private static J:La/m;

.field private static K:La/b/h;


# instance fields
.field A:Lcom/rubycell/e/k;

.field B:Lcom/rubycell/e/f;

.field C:I

.field private D:Landroid/app/Dialog;

.field private E:Landroid/widget/EditText;

.field private F:Lcom/rubycell/a/f;

.field private G:Landroid/widget/Button;

.field private I:Z

.field private final L:Landroid/os/Handler;

.field private final M:Ljava/lang/Runnable;

.field private final N:Ljava/lang/Runnable;

.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:Ljava/util/ArrayList;

.field f:Landroid/widget/ImageButton;

.field g:Landroid/widget/ImageButton;

.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/widget/ImageButton;

.field k:Landroid/widget/ExpandableListView;

.field l:Landroid/widget/ListView;

.field m:Landroid/widget/ExpandableListView;

.field n:Landroid/widget/RelativeLayout;

.field o:Landroid/widget/LinearLayout;

.field p:Landroid/widget/RelativeLayout;

.field q:Landroid/widget/RelativeLayout;

.field r:Landroid/widget/RelativeLayout;

.field s:Lcom/rubycell/adcenter/a;

.field t:Landroid/widget/LinearLayout;

.field u:Landroid/content/Context;

.field v:Landroid/content/SharedPreferences;

.field w:Landroid/content/SharedPreferences$Editor;

.field x:Landroid/widget/RelativeLayout;

.field y:Ljava/util/ArrayList;

.field z:Lcom/rubycell/e/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->I:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->L:Landroid/os/Handler;

    new-instance v0, Lcom/rubycell/pianisthd/bd;

    invoke-direct {v0, p0}, Lcom/rubycell/pianisthd/bd;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->M:Ljava/lang/Runnable;

    new-instance v0, Lcom/rubycell/pianisthd/bj;

    invoke-direct {v0, p0}, Lcom/rubycell/pianisthd/bj;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->N:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/rubycell/pianisthd/SongListActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/rubycell/pianisthd/SongListActivity;->H:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lcom/rubycell/pianisthd/SongListActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->E:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/rubycell/pianisthd/SongListActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->I:Z

    return-void
.end method

.method static synthetic f(Lcom/rubycell/pianisthd/SongListActivity;)Lcom/rubycell/a/f;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->F:Lcom/rubycell/a/f;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rubycell/pianisthd/SongListActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->f:Landroid/widget/ImageButton;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->g:Landroid/widget/ImageButton;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private l()Z
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->v:Landroid/content/SharedPreferences;

    const-string v1, "oauth_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v7

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    new-instance v4, Lcom/rubycell/pianisthd/c/a;

    invoke-direct {v4}, Lcom/rubycell/pianisthd/c/a;-><init>()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/rubycell/pianisthd/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->f()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/rubycell/pianisthd/c/a;->b(I)V

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->b()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/rubycell/pianisthd/c/a;->a(I)V

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/rubycell/pianisthd/c/a;->a(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v7

    :goto_1
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v6, v1, :cond_2

    invoke-virtual {v4, v5}, Lcom/rubycell/pianisthd/c/a;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 4

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/rubycell/pianisthd/SongListActivity;->J:La/m;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rubycell/pianisthd/SongListActivity;->H:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/m;->a(Ljava/lang/String;)La/k;
    :try_end_0
    .catch La/o; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/o;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, La/a/c;

    invoke-direct {v0}, La/a/c;-><init>()V

    invoke-virtual {v0}, La/a/c;->a()La/a/c;

    const-string v1, "IZKyRVYl0QhEGXRG9FofTA"

    invoke-virtual {v0, v1}, La/a/c;->a(Ljava/lang/String;)La/a/c;

    const-string v1, "ZH8CTGxSB0npsbemSbpl8NMd6WqhDU8fjpB1p61hC8"

    invoke-virtual {v0, v1}, La/a/c;->b(Ljava/lang/String;)La/a/c;

    invoke-virtual {v0}, La/a/c;->b()La/a/a;

    move-result-object v0

    new-instance v1, La/p;

    invoke-direct {v1, v0}, La/p;-><init>(La/a/a;)V

    invoke-virtual {v1}, La/p;->a()La/m;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/SongListActivity;->J:La/m;

    :try_start_1
    sget-object v0, Lcom/rubycell/pianisthd/SongListActivity;->J:La/m;

    const-string v1, "twitter://painist"

    invoke-virtual {v0, v1}, La/m;->b(Ljava/lang/String;)La/b/h;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/SongListActivity;->K:La/b/h;

    const-string v0, "Please authorize this app!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/rubycell/pianisthd/SongListActivity;->K:La/b/h;

    invoke-virtual {v2}, La/b/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch La/o; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, La/o;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(III)V
    .locals 10

    const/16 v9, 0x6f

    const/16 v3, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "Play song from phone"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/rubycell/pianisthd/d/b;->M:I

    if-eq v1, v8, :cond_2

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/rubycell/pianisthd/d/e;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-string v1, "Playback recorded song"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {v7}, Lcom/rubycell/pianisthd/d/l;->a(Z)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->finish()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/rubycell/pianisthd/d/g;->b:Lcom/rubycell/pianisthd/c/a;

    sput-object v1, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v4

    move v5, v7

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v5, v1, :cond_3

    move v1, v7

    :goto_3
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/rubycell/pianisthd/d/e;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v7}, Lcom/rubycell/pianisthd/d/l;->a(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "groupId"

    invoke-virtual {v3, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "childId"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v9, v3}, Lcom/rubycell/pianisthd/SongListActivity;->setResult(ILandroid/content/Intent;)V

    move v1, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/rubycell/pianisthd/d/e;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v7}, Lcom/rubycell/pianisthd/d/l;->a(Z)V

    goto :goto_1

    :pswitch_2
    const-string v0, "Share"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "I hope you like this song"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    const-string v2, "\n\n\n----\nCreated with Pianist HD  on my Android "

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Send mail..."

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "Upload song"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ruby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [C

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_4
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ruby"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "metadata"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "base64"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-class v4, Lcom/rubycell/pianisthd/UploadActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "base64"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "firstNote"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/rubycell/pianisthd/SongListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "File not found! Replay file was deleted or \n you are trying to upload a record that was created in double-mode "

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :pswitch_4
    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-string v1, "Your SD Card is unmounted or read-only"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Are you sure you want to delete this record?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Yes"

    new-instance v2, Lcom/rubycell/pianisthd/bf;

    invoke-direct {v2, p0, p2}, Lcom/rubycell/pianisthd/bf;-><init>(Lcom/rubycell/pianisthd/SongListActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "No"

    new-instance v2, Lcom/rubycell/pianisthd/bg;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/bg;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "Play song from phone"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/a/b;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->A:Lcom/rubycell/pianisthd/c/a;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "groupId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "childId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/rubycell/pianisthd/SongListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->finish()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-string v1, "Your SD Card is unmounted or read-only. You can\'t save your favourite"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    iget v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->C:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    :cond_9
    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/h;->a(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/c/h;->a(Z)V

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/rubycell/pianisthd/c/h;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/pianisthd/EditSongCloudActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "author"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hand"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "startnote"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serverId"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fileId"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isactive"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/rubycell/pianisthd/SongListActivity;->J:La/m;

    invoke-virtual {v0, p1}, La/m;->a(Ljava/lang/String;)La/k;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->L:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->I:Z
    :try_end_0
    .catch La/o; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/o;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    return-void
.end method

.method protected final b()V
    .locals 4

    new-instance v0, Lcom/rubycell/a/f;

    const-string v1, "411745778849850"

    invoke-direct {v0, v1}, Lcom/rubycell/a/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->F:Lcom/rubycell/a/f;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->F:Lcom/rubycell/a/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "publish_stream"

    aput-object v3, v1, v2

    new-instance v2, Lcom/rubycell/pianisthd/bi;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/bi;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubycell/a/f;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/rubycell/a/h;)V

    return-void
.end method

.method public final b(Lcom/rubycell/pianisthd/c/h;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/DeleteSongCloudActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "serverId"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fileId"

    invoke-virtual {p1}, Lcom/rubycell/pianisthd/c/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/SongListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/SongListActivity;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public final c()Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final d()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->l:Landroid/widget/ListView;

    return-object v0
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    return-void
.end method

.method public final e()Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v2, 0x1f4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-string v1, "Upload progress succeeds"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const-string v1, "Upload progress fail"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClickCloudMenuButton(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0a0130

    const v4, 0x7f0a012f

    const v3, 0x7f0a012e

    const v2, 0x7f0a012d

    const/4 v5, 0x0

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v3}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v6}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->C:I

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->m()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    move v1, v5

    :goto_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v2

    move v3, v5

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/h;->h()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_1
    iput v5, p0, Lcom/rubycell/pianisthd/SongListActivity;->C:I

    invoke-virtual {p0, v3}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->m()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->e:Ljava/util/ArrayList;

    move v1, v5

    :goto_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :try_start_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/rubycell/pianisthd/c/i;

    invoke-direct {v2}, Lcom/rubycell/pianisthd/c/i;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_2
    iput v5, p0, Lcom/rubycell/pianisthd/SongListActivity;->C:I

    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    const v0, 0x7f0200b0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    iput v5, p0, Lcom/rubycell/pianisthd/SongListActivity;->C:I

    invoke-virtual {p0, v6}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :try_start_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a012d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClickMenuButton(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->k()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->f:Landroid/widget/ImageButton;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    sput v0, Lcom/rubycell/pianisthd/d/b;->W:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->k()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->g:Landroid/widget/ImageButton;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x2

    sput v0, Lcom/rubycell/pianisthd/d/b;->W:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->k()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x3

    sput v0, Lcom/rubycell/pianisthd/d/b;->W:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a011f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x1000

    const/16 v3, 0x400

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/SongListActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const v0, 0x7f0a0123

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->x:Landroid/widget/RelativeLayout;

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->v:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->f:Landroid/widget/ImageButton;

    const v0, 0x7f0a0120

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->g:Landroid/widget/ImageButton;

    const v0, 0x7f0a0121

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/bk;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bk;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0124

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0129

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0a012b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->l:Landroid/widget/ListView;

    const v0, 0x7f0a0131

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    iput v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->C:I

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/g;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->l:Landroid/widget/ListView;

    new-instance v1, Lcom/rubycell/pianisthd/bl;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bl;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/m;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    sget v1, Lcom/rubycell/pianisthd/d/b;->V:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/bm;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bm;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->k:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/bn;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bn;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/a/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/bo;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bo;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->m:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/rubycell/pianisthd/bp;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bp;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->i:Landroid/widget/ImageButton;

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/bq;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bq;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v0, Lcom/rubycell/adcenter/a;

    invoke-direct {v0, p0}, Lcom/rubycell/adcenter/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->s:Lcom/rubycell/adcenter/a;

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f080001

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    new-instance v1, Lcom/rubycell/pianisthd/be;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/be;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    const v2, 0x7f0a0104

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->G:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->G:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    const v2, 0x7f0a0105

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->E:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    const v2, 0x7f0a0107

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->D:Landroid/app/Dialog;

    const v2, 0x7f0a0108

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitter://painist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    sget-object v1, Lcom/rubycell/pianisthd/SongListActivity;->J:La/m;

    sget-object v2, Lcom/rubycell/pianisthd/SongListActivity;->K:La/b/h;

    invoke-virtual {v1, v2, v0}, La/m;->a(La/b/h;Ljava/lang/String;)La/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->v:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->w:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->w:Landroid/content/SharedPreferences$Editor;

    const-string v2, "oauth_token"

    invoke-virtual {v0}, La/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->w:Landroid/content/SharedPreferences$Editor;

    const-string v2, "oauth_token_secret"

    invoke-virtual {v0}, La/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->w:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->s:Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a;->c()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->s:Lcom/rubycell/adcenter/a;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->b(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->B:Lcom/rubycell/e/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/e/f;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->z:Lcom/rubycell/e/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/e/i;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->A:Lcom/rubycell/e/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/e/k;->cancel(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->s:Lcom/rubycell/adcenter/a;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->t:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->c(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    const v5, 0x7f020183

    const v4, 0x7f020181

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->s:Lcom/rubycell/adcenter/a;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a;->a(Landroid/view/ViewGroup;)V

    :cond_0
    new-instance v0, Lcom/rubycell/e/f;

    invoke-direct {v0, p0}, Lcom/rubycell/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->B:Lcom/rubycell/e/f;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->B:Lcom/rubycell/e/f;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/e/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/rubycell/e/i;

    invoke-direct {v0, p0}, Lcom/rubycell/e/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->z:Lcom/rubycell/e/i;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->z:Lcom/rubycell/e/i;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/e/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/rubycell/e/k;

    invoke-direct {v0, p0}, Lcom/rubycell/e/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->A:Lcom/rubycell/e/k;

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->A:Lcom/rubycell/e/k;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/e/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->k()V

    sget v0, Lcom/rubycell/pianisthd/d/b;->W:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->M:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_1
    invoke-direct {p0}, Lcom/rubycell/pianisthd/SongListActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->v:Landroid/content/SharedPreferences;

    const-string v1, "oauth_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->v:Landroid/content/SharedPreferences;

    const-string v2, "oauth_token_secret"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, La/a/c;

    invoke-direct {v2}, La/a/c;-><init>()V

    const-string v3, "IZKyRVYl0QhEGXRG9FofTA"

    invoke-virtual {v2, v3}, La/a/c;->a(Ljava/lang/String;)La/a/c;

    move-result-object v2

    const-string v3, "ZH8CTGxSB0npsbemSbpl8NMd6WqhDU8fjpB1p61hC8"

    invoke-virtual {v2, v3}, La/a/c;->b(Ljava/lang/String;)La/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, La/a/c;->c(Ljava/lang/String;)La/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, La/a/c;->d(Ljava/lang/String;)La/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/c;->b()La/a/a;

    move-result-object v0

    new-instance v1, La/p;

    invoke-direct {v1, v0}, La/p;-><init>(La/a/a;)V

    invoke-virtual {v1}, La/p;->a()La/m;

    move-result-object v0

    sput-object v0, Lcom/rubycell/pianisthd/SongListActivity;->J:La/m;

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->I:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/rubycell/pianisthd/bh;

    invoke-direct {v0, p0}, Lcom/rubycell/pianisthd/bh;-><init>(Lcom/rubycell/pianisthd/SongListActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->g:Landroid/widget/ImageButton;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/SongListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/SongListActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/b/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    iget-object v3, p0, Lcom/rubycell/pianisthd/SongListActivity;->v:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2, v3}, Lcom/rubycell/pianisthd/b/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/av;->b(Lcom/tapjoy/ap;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 6

    iget-object v0, p0, Lcom/rubycell/pianisthd/SongListActivity;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/rubycell/e/n;

    iget-object v1, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/rubycell/e/n;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rubycell/pianisthd/SongListActivity;->u:Landroid/content/Context;

    const v5, 0x7f070032

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/rubycell/e/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
