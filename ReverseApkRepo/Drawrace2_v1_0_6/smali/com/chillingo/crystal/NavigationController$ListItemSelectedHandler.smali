.class public Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ListItemSelectedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/NavigationController;


# direct methods
.method protected constructor <init>(Lcom/chillingo/crystal/NavigationController;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12

    const/16 v11, 0x7d0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v10

    invoke-interface {v10}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-interface {v10}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    check-cast p2, Ljava/util/Map;

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "formsubmit"

    invoke-static {p2, v1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    const-string v1, "formsubmiturlencoded"

    invoke-static {p2, v1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    move v5, v3

    :goto_1
    const-string v1, "nostackpush"

    invoke-static {p2, v1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    move v6, v3

    :goto_2
    const-string v1, "imagesubmitlibrary"

    invoke-static {p2, v1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    move v7, v3

    :goto_3
    const-string v1, "imagesubmitcamera"

    invoke-static {p2, v1}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    move v8, v3

    :goto_4
    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "crystal://activateui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistory()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/DataStore;->setUiActivated(Z)V

    const-string v0, "profiletab"

    invoke-interface {v10, v4, v0, v9}, Lcom/chillingo/crystal/INavigationControllerDelegate;->activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_5
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    move v6, v4

    goto :goto_2

    :cond_5
    move v7, v4

    goto :goto_3

    :cond_6
    move v8, v4

    goto :goto_4

    :cond_7
    const-string v1, "crystal-activateui://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->clearHistory()V

    const-string v1, "crystal-activateui://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #getter for: Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;
    invoke-static {v0}, Lcom/chillingo/crystal/NavigationController;->access$000(Lcom/chillingo/crystal/NavigationController;)Lcom/chillingo/crystal/NavigationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->preloadTab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_8

    const-string v0, "profiletab"

    :cond_8
    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2}, Lcom/chillingo/crystal/NavigationController;->preloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2, v0, v9}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #getter for: Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;
    invoke-static {v2}, Lcom/chillingo/crystal/NavigationController;->access$000(Lcom/chillingo/crystal/NavigationController;)Lcom/chillingo/crystal/NavigationState;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/chillingo/crystal/NavigationState;->setPreloadTab(Ljava/lang/String;)V

    invoke-interface {v10, v4, v0, v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    instance-of v2, v10, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    if-nez v2, :cond_9

    move-object v1, v9

    goto :goto_6

    :cond_b
    const-string v1, "crystal://deactivateui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_c

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistory()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/LoginHandler;->userWasSignedOut()V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #calls: Lcom/chillingo/crystal/NavigationController;->signOut()V
    invoke-static {v0}, Lcom/chillingo/crystal/NavigationController;->access$100(Lcom/chillingo/crystal/NavigationController;)V

    goto/16 :goto_5

    :cond_c
    const-string v1, "sign_up_reminder.cuid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_d

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/LoginHandler;->userWasSignedOut()V

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #calls: Lcom/chillingo/crystal/NavigationController;->signOut(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/chillingo/crystal/NavigationController;->access$200(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const-string v1, "crystal://facebooklogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->facebook()Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    move-result-object v0

    #calls: Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->doLogin()V
    invoke-static {v0}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->access$300(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;)V

    goto/16 :goto_5

    :cond_e
    const-string v1, "crystal://facebooklogout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->facebook()Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    move-result-object v0

    #calls: Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->doLogout()V
    invoke-static {v0}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->access$400(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;)V

    goto/16 :goto_5

    :cond_f
    const-string v1, "crystal://facebookpublish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "crystal://twitterlogin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->twitter()Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->doLogin()V

    goto/16 :goto_5

    :cond_10
    const-string v1, "crystal://twitterlogout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->twitter()Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->doLogout()V

    goto/16 :goto_5

    :cond_11
    const-string v1, "crystal://twitterpin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "crystal-http://www.youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "crystal-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5

    :cond_12
    const-string v1, "crystal-uiwebview://www.youtube.com/v/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_13

    const-string v1, "crystal-uiwebview://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5

    :cond_13
    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_14
    const-string v1, "crystal://buyvirtualcurrency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #calls: Lcom/chillingo/crystal/NavigationController;->initiateInAppPurchase(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/chillingo/crystal/NavigationController;->access$500(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    const-string v1, "crystal-earnvc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "crystal-earnvc"

    const-string v2, "https"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v2, v1, v0, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #setter for: Lcom/chillingo/crystal/NavigationController;->_earnVCRedirectUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/NavigationController;->access$602(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->originalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/form/FormModelHeap;->get(Ljava/lang/String;)Lcom/chillingo/crystal/form/FormModel;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/chillingo/crystal/form/FormModel;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/PrivateSession;->addCommonFieldsToFormModel(Ljava/util/Map;)V

    :goto_7
    :try_start_0
    invoke-static {v0}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_8
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostData([B)V

    :cond_16
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->queueServerDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto/16 :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :cond_17
    if-eqz v0, :cond_23

    const-string v1, "crystal://startchallenge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/chillingo/crystal/PrivateSession;->notifyStartChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/chillingo/crystal/NavigationController;->access$702(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #getter for: Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/chillingo/crystal/NavigationController;->access$700(Lcom/chillingo/crystal/NavigationController;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1, v10}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #getter for: Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/chillingo/crystal/NavigationController;->access$700(Lcom/chillingo/crystal/NavigationController;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_9
    const-string v0, "sourceurl"

    invoke-static {p2, v0}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v11

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->originalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/chillingo/crystal/form/FormModelHeap;->get(Ljava/lang/String;)Lcom/chillingo/crystal/form/FormModel;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/chillingo/crystal/form/FormModel;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    check-cast v1, Ljava/util/Map;

    iget-object v11, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v11}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/chillingo/crystal/PrivateSession;->addCommonFieldsToFormModel(Ljava/util/Map;)V

    move-object v11, v1

    :goto_a
    if-eq v2, v3, :cond_18

    if-ne v5, v3, :cond_1e

    :cond_18
    if-eqz v11, :cond_1e

    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->ApplicationJson:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    if-ne v2, v3, :cond_1d

    :try_start_1
    invoke-static {v11}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_b
    const-string v3, "suggest_via_sms.cuid?suggest=1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #setter for: Lcom/chillingo/crystal/NavigationController;->_suggestSmsUrl:Ljava/lang/String;
    invoke-static {v3, v10}, Lcom/chillingo/crystal/NavigationController;->access$802(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    iget-object v5, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v5}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    :cond_1a
    new-instance v9, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v3, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v9, v10, v3, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {v9, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostData([B)V

    invoke-virtual {v9, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostType(Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;)V

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v9, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setSourceUrl(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/chillingo/crystal/http/FetchManager;->queueServerDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :cond_1c
    :goto_c
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willPushViewAsResultOfListItemSelected(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v9, v6, v4}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    goto/16 :goto_5

    :cond_1d
    :try_start_2
    sget-object v1, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->UrlEncoded:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    invoke-static {v11}, Lcom/chillingo/crystal/utils/DictionaryUtils;->urlEncodeDictionary(Ljava/util/Map;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_b

    :catch_1
    move-exception v2

    move-object v2, v9

    goto :goto_b

    :cond_1e
    if-ne v8, v3, :cond_1f

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #calls: Lcom/chillingo/crystal/NavigationController;->doPickImageFromCamera(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/chillingo/crystal/NavigationController;->access$900(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V

    goto :goto_c

    :cond_1f
    if-ne v7, v3, :cond_20

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    #calls: Lcom/chillingo/crystal/NavigationController;->doPickImageFromLibrary(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/chillingo/crystal/NavigationController;->access$1000(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlNoCache()Z

    move-result v1

    if-ne v1, v3, :cond_21

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    :goto_d
    if-nez v9, :cond_1c

    new-instance v9, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v9, v10, v0, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    goto :goto_c

    :cond_21
    move-object v9, v0

    goto :goto_d

    :cond_22
    move-object v11, v9

    goto/16 :goto_a

    :cond_23
    move-object v10, v0

    goto/16 :goto_9

    :cond_24
    move-object v0, v9

    goto/16 :goto_7
.end method
