.class public interface abstract Lcom/chillingo/crystal/INavigationControllerDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
.implements Lcom/chillingo/crystal/NotificationReceiver;
.implements Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;


# virtual methods
.method public abstract activateBasicNavBar()V
.end method

.method public abstract activateBasicNavBar(Ljava/lang/String;)V
.end method

.method public abstract activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract areaToShowDialogIn()Landroid/graphics/Rect;
.end method

.method public abstract backgroundColour()I
.end method

.method public abstract challengeStartConfirmed()V
.end method

.method public abstract closeUi()V
.end method

.method public abstract context()Landroid/content/Context;
.end method

.method public abstract displayArea()Landroid/graphics/Rect;
.end method

.method public abstract hideBusy()V
.end method

.method public abstract incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
.end method

.method public abstract isBackButtonDelegate()Z
.end method

.method public abstract loadMainUIDescription()V
.end method

.method public abstract mainView()Landroid/view/ViewGroup;
.end method

.method public abstract navigationView()Lcom/chillingo/crystal/ui/skinning/SkinnedView;
.end method

.method public abstract poppedView()V
.end method

.method public abstract pushedView()V
.end method

.method public abstract requiresOriginLayout()Z
.end method

.method public abstract setIncomingView(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V
.end method

.method public abstract shouldAddBackBarToUiDescription()Z
.end method

.method public abstract showBusy()V
.end method

.method public abstract useOriginNavBar(Z)V
.end method

.method public abstract viewToActOn()Landroid/widget/RelativeLayout;
.end method

.method public abstract viewToShowDialogIn()Landroid/widget/RelativeLayout;
.end method

.method public abstract willDisplayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract willPopView()V
.end method

.method public abstract willPopView(Lcom/chillingo/crystal/serverdata/UIDescription;)V
.end method

.method public abstract willPushView(Lcom/chillingo/crystal/serverdata/UIDescription;)V
.end method

.method public abstract willPushViewAsResultOfListItemSelected(Lcom/chillingo/crystal/serverdata/UIDescription;)V
.end method

.method public abstract willShowModalInternetConnectionErrorDialog()V
.end method

.method public abstract willShowModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract willShowModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
.end method
