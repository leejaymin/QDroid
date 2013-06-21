.class public Limoblife/toolbox/full/ui/AHistory;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Limoblife/toolbox/full/ui/ao;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/AHistory;->f:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AHistory;)Limoblife/toolbox/full/ui/ao;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    return-object v0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AHistory;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/AHistory;->g:Landroid/app/ProgressDialog;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AHistory;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/AHistory;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/am;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/am;-><init>(Limoblife/toolbox/full/ui/AHistory;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleanSearch()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cleanSearch(): Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/AHistory;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/ao;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {v0, v2}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanClipboard(): cleaning clip.getText() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanClipboard(): cleaned clip.getText() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const v0, 0x7f070128

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanClipboard(): Throwable = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {v0, v6}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cleanBrowser()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const v0, 0x7f070129

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanBrowser(): Throwable = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v3, "com.google.android.finsky.RecentSuggestionsProvider"

    const/4 v4, 0x1

    invoke-direct {v0, p0, v3, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cleanMarket()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    const v0, 0x7f07012a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanMarket(): Throwable = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    const-string v0, "com.google.android.gmail.SuggestionProvider"

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cleanGmail()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    const v0, 0x7f07012b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanGmail(): Throwable = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cleanEarth()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.google.android.earth.SearchHistoryProvider"

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://com.google.android.earth.SearchHistoryProvider/history"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    const v0, 0x7f07012c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanMaps(): Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_5
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/ui/ao;->b(I)Limoblife/toolbox/full/ui/ap;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->c(Limoblife/toolbox/full/ui/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://com.google.android.maps.SearchHistoryProvider/history"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cleanMaps()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f07012d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanMaps(): Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/AHistory;)V
    .locals 2

    const v0, 0x7f070127

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_0
    new-array v1, v1, [Limoblife/toolbox/full/ui/ap;

    const/4 v2, 0x0

    new-instance v3, Limoblife/toolbox/full/ui/ap;

    const/4 v4, 0x0

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f07011f

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Limoblife/toolbox/full/ui/ap;-><init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Limoblife/toolbox/full/ui/ap;

    const/4 v4, 0x1

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f070120

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Limoblife/toolbox/full/ui/ap;-><init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Limoblife/toolbox/full/ui/ap;

    const/4 v4, 0x2

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f070121

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Limoblife/toolbox/full/ui/ap;-><init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Limoblife/toolbox/full/ui/ap;

    const/4 v4, 0x2

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f070122

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Limoblife/toolbox/full/ui/ap;-><init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Limoblife/toolbox/full/ui/ap;

    const/4 v4, 0x2

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f070123

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Limoblife/toolbox/full/ui/ap;-><init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Limoblife/toolbox/full/ui/ap;

    const/4 v4, 0x2

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f070124

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Limoblife/toolbox/full/ui/ap;-><init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v2

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    aget-object v2, v1, v0

    invoke-static {v2}, Limoblife/toolbox/full/ui/ap;->b(Limoblife/toolbox/full/ui/ap;)V

    iget-object v2, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Limoblife/toolbox/full/ui/ao;->a(Limoblife/toolbox/full/ui/ap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateCache():\tException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    const-wide/16 v2, 0x6

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imoblife.memorybooster.AMOUNT"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "imoblife.memorybooster.SIZE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v1, p0, Limoblife/toolbox/full/ui/AHistory;->f:I

    invoke-virtual {p0, v1, v0}, Limoblife/toolbox/full/ui/AHistory;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/ui/an;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/an;-><init>(Limoblife/toolbox/full/ui/AHistory;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/an;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AHistory;->f:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AHistory;->b()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->requestWindowFeature(I)Z

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getPackageManager()Landroid/content/pm/PackageManager;

    new-instance v0, Limoblife/toolbox/full/ui/ao;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/ao;-><init>(Limoblife/toolbox/full/ui/AHistory;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AHistory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->a:Landroid/view/LayoutInflater;

    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->c:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->c:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07011e

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/ak;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/ak;-><init>(Limoblife/toolbox/full/ui/AHistory;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Limoblife/toolbox/full/ui/al;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/al;-><init>(Limoblife/toolbox/full/ui/AHistory;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->h:Landroid/os/Handler;

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AHistory;->b()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AHistory;->b:Limoblife/toolbox/full/ui/ao;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/ao;->a(I)V

    :cond_0
    return-void
.end method
