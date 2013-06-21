.class public Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.super Landroid/app/Activity;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;,
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
    }
.end annotation


# static fields
.field private static final TYPE_BROWSER:I = 0x2

.field private static final TYPE_OFFER:I = 0x1

.field private static final TYPE_VIDEO:I


# instance fields
.field private final MENU_BOOKMARK:I

.field private final MENU_CLOSE:I

.field private final MENU_FORWARD:I

.field private TAG:Ljava/lang/String;

.field private asyncRequestThreads:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/String;

.field private handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

.field private scale:F

.field private type:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, "mobclix-browser"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    .line 64
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->scale:F

    .line 68
    new-instance v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->MENU_BOOKMARK:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->MENU_FORWARD:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->MENU_CLOSE:I

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dp(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 108
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->scale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, ".type"

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->scale:F

    .line 88
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, extras:Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iput v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 93
    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setRequestedOrientation(I)V

    .line 95
    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    invoke-direct {v1, p0, p0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 105
    return-void

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "offer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iput v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 98
    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".currency"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    goto :goto_0

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iput v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    .line 101
    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->requestWindowFeature(I)Z

    .line 102
    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->data:Ljava/lang/String;

    invoke-direct {v1, p0, p0, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 188
    :goto_0
    return v0

    .line 179
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 180
    const-string v0, "Bookmark"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    const-string v0, "Forward"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 183
    const v1, 0x108003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    const/4 v0, 0x2

    const-string v1, "Close"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 185
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v3

    .line 186
    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x4

    .line 155
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .end local p0
    :goto_0
    return v0

    .line 157
    .restart local p0
    :pswitch_1
    if-ne p1, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 163
    :pswitch_2
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;
    invoke-static {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    .restart local p0
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 193
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return v0

    .line 195
    .restart local p0
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 198
    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;
    invoke-static {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    .line 204
    .restart local p0
    :pswitch_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->finish()V

    move v0, v2

    .line 205
    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 195
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 151
    .end local p0
    :goto_0
    return-void

    .line 146
    .restart local p0
    :pswitch_0
    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 115
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 133
    .end local p0
    :goto_0
    return-void

    .line 117
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$5(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->runNextAsyncRequest()V

    .line 119
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    const-string v1, ""

    const-string v2, "Loading..."

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$6(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/app/ProgressDialog;)V

    .line 120
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;
    invoke-static {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 138
    return-void
.end method

.method public runNextAsyncRequest()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 217
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 232
    .end local v0           #thread:Ljava/lang/Thread;
    .end local p0
    :goto_0
    return-void

    .line 220
    .restart local p0
    :cond_0
    iget v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    const/4 v2, 0x1

    #setter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z
    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$8(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Z)V

    .line 223
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->createAdButtonBanner()V

    .line 225
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    check-cast v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 226
    iget-object p0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->view:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;
    invoke-static {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
