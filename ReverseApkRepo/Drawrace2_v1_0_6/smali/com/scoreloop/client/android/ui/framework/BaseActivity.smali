.class public abstract Lcom/scoreloop/client/android/ui/framework/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/scoreloop/client/android/ui/framework/OptionsMenuForActivityGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_VISIBLE_DIALOG_ID:Ljava/lang/String; = "bundle_key_visible_dialog_id"

.field static CHILD_RESULT_CODE:Ljava/lang/String;

.field protected static final DIALOG_ERROR_NETWORK:I

.field private static LOG_ENABLED:Z


# instance fields
.field private _contentView:Landroid/view/View;

.field private _currentScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private _handler:Landroid/os/Handler;

.field private _isPaused:Z

.field private _needsRefresh:Z

.field private _observedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _refreshFlags:I

.field private _screenValuesSnapshot:Lcom/scoreloop/client/android/ui/framework/ValueStore;

.field private final _spinnerControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _spinnerSemaphore:I

.field private _spinnerView:Landroid/view/View;

.field protected _visibleDialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "childResultCode"

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->CHILD_RESULT_CODE:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->LOG_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    .line 88
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_screenValuesSnapshot:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerControllers:Ljava/util/Set;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    return-void
.end method

.method private getSpinnerParentFrameLayout()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 157
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 158
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Landroid/widget/FrameLayout;

    .line 163
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 161
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 6
    .parameter "method"

    .prologue
    .line 199
    sget-boolean v3, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->LOG_ENABLED:Z

    if-nez v3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, ""

    .line 203
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, ownString:Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_1
    const-string v3, "ScoreloopUI.Framework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "              > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeScreenValuesSnapshot()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_screenValuesSnapshot:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_screenValuesSnapshot:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_screenValuesSnapshot:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_currentScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->copyFromOtherForKeys(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private observeKeys()V
    .locals 4

    .prologue
    .line 222
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    if-nez v3, :cond_1

    .line 229
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    .line 226
    .local v2, screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->addObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/widget/Toast;
    .locals 5
    .parameter "context"
    .parameter "message"
    .parameter "drawable"
    .parameter "duration"

    .prologue
    .line 68
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    if-eqz p2, :cond_0

    .line 72
    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 78
    return-object v1
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/widget/Toast;

    .line 65
    return-void
.end method

.method private unobserveKeys()V
    .locals 4

    .prologue
    .line 464
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    if-nez v3, :cond_1

    .line 471
    :cond_0
    return-void

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    .line 468
    .local v2, screenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v2, v1, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->removeObserver(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    goto :goto_0
.end method

.method private updateScreenValues()V
    .locals 3

    .prologue
    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_currentScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 475
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    .line 477
    .local v0, newScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_screenValuesSnapshot:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->runObserverForKeys(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/util/Set;Lcom/scoreloop/client/android/ui/framework/ValueStore$Observer;)V

    .line 480
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs addObservedKeys([Ljava/lang/String;)V
    .locals 1
    .parameter "keys"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->unobserveKeys()V

    .line 97
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_observedKeys:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 101
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    if-nez v0, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->observeKeys()V

    .line 104
    :cond_1
    return-void
.end method

.method public display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V
    .locals 1
    .parameter "screenDescription"

    .prologue
    .line 107
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;)V

    .line 108
    return-void
.end method

.method protected displayPrevious()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->displayPrevious(Z)V

    .line 112
    return-void
.end method

.method protected displayPrevious(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 115
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->displayPreviousDescription(Z)V

    .line 118
    :cond_1
    return-void
.end method

.method protected finishDisplay()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->finishDisplay()V

    .line 122
    return-void
.end method

.method protected finishDisplayWithResult(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->CHILD_RESULT_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->finish()V

    .line 129
    return-void
.end method

.method public getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "activityIdentifier"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, activityId:Ljava/lang/String;
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->getActivityDescription(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ActivityDescription;

    move-result-object v1

    .line 134
    .local v1, ad:Lcom/scoreloop/client/android/ui/framework/ActivityDescription;
    if-nez v1, :cond_0

    .line 135
    new-instance v2, Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;-><init>()V

    .line 137
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/framework/ActivityDescription;->getArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    goto :goto_0
.end method

.method protected getCurrentScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenManager;->getCurrentDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    return-object v0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_currentScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getCurrentScreenDescription()Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/framework/ScreenDescription;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_currentScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_currentScreenValues:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    return-object v0
.end method

.method protected getTopParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .line 168
    .local v0, parent:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 171
    :cond_0
    return-object v0
.end method

.method protected hideSpinner()V
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerSemaphore:I

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spinner not shown you want to hide"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerSemaphore:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerSemaphore:I

    if-nez v0, :cond_1

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->onSpinnerShow(Z)V

    .line 181
    :cond_1
    return-void
.end method

.method protected hideSpinnerFor(Ljava/lang/Object;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->hideSpinner()V

    .line 188
    :cond_0
    return-void
.end method

.method protected isNavigationAllowed(Lcom/scoreloop/client/android/ui/framework/NavigationIntent;)Z
    .locals 1
    .parameter "navigationIntent"

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method protected isPaused()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->displayPrevious()V

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_handler:Landroid/os/Handler;

    .line 239
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    .line 242
    if-eqz p1, :cond_0

    .line 243
    const-string v0, "bundle_key_visible_dialog_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    .line 244
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 245
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showDialog(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialogInterface"

    .prologue
    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    .line 274
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 278
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->displayPrevious()V

    .line 280
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelectedForActivityGroup(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 303
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    .line 305
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->unobserveKeys()V

    .line 306
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->makeScreenValuesSnapshot()V

    .line 307
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 311
    .line 313
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 316
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenuForActivityGroup(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public onRefresh(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 335
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 340
    const-string v0, "onRestart"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 346
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    .line 348
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->observeKeys()V

    .line 349
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->updateScreenValues()V

    .line 350
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->refreshIfNeeded()V

    .line 351
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const-string v0, "bundle_key_visible_dialog_id"

    iget v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    return-void
.end method

.method protected onSpinnerShow(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_0
    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerView:Landroid/view/View;

    .line 365
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getSpinnerParentFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getSpinnerParentFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 374
    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 380
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->log(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 386
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 0
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 391
    return-void
.end method

.method protected refreshIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_needsRefresh:Z

    if-eqz v1, :cond_0

    .line 395
    iput-boolean v2, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_needsRefresh:Z

    .line 396
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_refreshFlags:I

    .line 397
    .local v0, flags:I
    iput v2, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_refreshFlags:I

    .line 398
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->onRefresh(I)V

    .line 400
    .end local v0           #flags:I
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->refreshIfNeeded()V

    .line 405
    return-void
.end method

.method protected setContentView(IZ)V
    .locals 3
    .parameter "resId"
    .parameter "supportSpinner"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 411
    if-eqz p2, :cond_0

    .line 412
    iput-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_contentView:Landroid/view/View;

    .line 414
    :cond_0
    return-void
.end method

.method protected setNeedsRefresh()V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->MERGE:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V

    .line 418
    return-void
.end method

.method protected setNeedsRefresh(ILcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;)V
    .locals 1
    .parameter "flags"
    .parameter "mode"

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_needsRefresh:Z

    .line 422
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->MERGE:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    if-ne p2, v0, :cond_0

    .line 423
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_refreshFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_refreshFlags:I

    .line 427
    :goto_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void

    .line 425
    :cond_0
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_refreshFlags:I

    goto :goto_0
.end method

.method protected showDialogSafe(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showDialogSafe(IZ)V

    .line 432
    return-void
.end method

.method protected showDialogSafe(IZ)V
    .locals 1
    .parameter "res"
    .parameter "saveDialogState"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_isPaused:Z

    if-nez v0, :cond_0

    .line 436
    if-eqz p2, :cond_1

    .line 437
    iput p1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    .line 442
    :goto_0
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showDialog(I)V

    .line 444
    :cond_0
    return-void

    .line 439
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_visibleDialogId:I

    goto :goto_0
.end method

.method protected showSpinner()V
    .locals 2

    .prologue
    .line 447
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerSemaphore:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerSemaphore:I

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->onSpinnerShow(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method protected showSpinnerFor(Ljava/lang/Object;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->_spinnerControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showSpinner()V

    .line 457
    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 460
    invoke-static {p0, p1}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    return-void
.end method
