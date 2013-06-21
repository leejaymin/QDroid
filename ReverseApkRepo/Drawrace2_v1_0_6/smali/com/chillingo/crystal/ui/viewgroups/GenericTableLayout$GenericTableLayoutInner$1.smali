.class Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object v0, p1

    check-cast v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chillingo/crystal/serverdata/UIElement;->href()Ljava/lang/String;

    move-result-object v3

    const-string v2, "crystal://selectitem"

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->toggleSwitch()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/chillingo/crystal/serverdata/UIElement;->yesNoConfirmation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/chillingo/crystal/serverdata/UIElement;->usage()Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/DataStore;->logUsageData(Ljava/util/List;)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->globalNav()Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->access$200(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    const-string v1, "Confirmation"

    const-string v3, "Yes"

    const-string v4, "No"

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/NavigationController;->showModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->uiElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-virtual {v1, v3, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->openUrlString(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method
