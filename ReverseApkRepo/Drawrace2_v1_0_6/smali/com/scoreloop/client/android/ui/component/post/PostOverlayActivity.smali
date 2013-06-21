.class public Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;
.super Landroid/app/Activity;
.source "PostOverlayActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;


# static fields
.field private static final DIALOG_CONNECT_FAILED:I = 0x65

.field private static final DIALOG_ERROR_NETWORK:I = 0x64

.field private static final DIALOG_PROGRESS:I = 0x66

.field private static _messageTarget:Lcom/scoreloop/client/android/core/model/Entity;


# instance fields
.field private final _checkboxToProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/CheckBox;",
            "Lcom/scoreloop/client/android/core/model/SocialProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final _handler:Landroid/os/Handler;

.field private _messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

.field private _messageEditText:Landroid/widget/EditText;

.field private _noButton:Landroid/widget/Button;

.field private _postButton:Landroid/widget/Button;

.field private final _providerToCheckboxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/scoreloop/client/android/core/model/SocialProvider;",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageTarget:Lcom/scoreloop/client/android/core/model/Entity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_providerToCheckboxMap:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Lcom/scoreloop/client/android/core/controller/MessageController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    return-void
.end method

.method private addCheckbox(Ljava/lang/String;I)V
    .locals 3
    .parameter "socialProviderId"
    .parameter "checkboxId"

    .prologue
    .line 77
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v1

    .line 78
    .local v1, provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 79
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_providerToCheckboxMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    return-void
.end method

.method private blockUI(Z)V
    .locals 4
    .parameter "block"

    .prologue
    const/16 v3, 0x66

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->showDialog(I)V

    .line 95
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 96
    .local v1, enabled:Z
    :goto_1
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_postButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 97
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_noButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 99
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 100
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 89
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #enabled:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    const/16 v3, 0x66

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 102
    .restart local v1       #enabled:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private createErrorDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "messageResId"

    .prologue
    const/4 v3, 0x1

    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 108
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 109
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    return-object v1
.end method

.method private createProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 116
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    return-object v0
.end method

.method public static setMessageTarget(Lcom/scoreloop/client/android/core/model/Entity;)V
    .locals 0
    .parameter "messageTarget"

    .prologue
    .line 65
    sput-object p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageTarget:Lcom/scoreloop/client/android/core/model/Entity;

    .line 66
    return-void
.end method

.method private updateProviderCheckbox(Lcom/scoreloop/client/android/core/model/SocialProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 280
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_providerToCheckboxMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 282
    .local v0, checkbox:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMessageTarget()Lcom/scoreloop/client/android/core/model/Entity;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageTarget:Lcom/scoreloop/client/android/core/model/Entity;

    return-object v0
.end method

.method protected getPostText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "Achievement"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "isChecked"

    .prologue
    .line 134
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 135
    check-cast v0, Landroid/widget/CheckBox;

    .line 136
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 137
    .local v1, provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    .line 141
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_handler:Landroid/os/Handler;

    new-instance v3, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v3, 0x7f030033

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->setContentView(I)V

    .line 158
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getMessageTarget()Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v1

    .line 159
    .local v1, messageTarget:Lcom/scoreloop/client/android/core/model/Entity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/scoreloop/client/android/core/model/Entity;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->finish()V

    .line 204
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v3, Lcom/scoreloop/client/android/core/controller/MessageController;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/core/controller/MessageController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    .line 167
    const v3, 0x7f0c0079

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f0802a9

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, format:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getPostText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v3, 0x7f0c007d

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_noButton:Landroid/widget/Button;

    .line 172
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_noButton:Landroid/widget/Button;

    new-instance v4, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$2;

    invoke-direct {v4, p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$2;-><init>(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v3, 0x7f0c007c

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageEditText:Landroid/widget/EditText;

    .line 181
    const v3, 0x7f0c007e

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_postButton:Landroid/widget/Button;

    .line 182
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_postButton:Landroid/widget/Button;

    new-instance v4, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;

    invoke-direct {v4, p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;-><init>(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const-string v3, "com.facebook.v1"

    const v4, 0x7f0c007a

    invoke-direct {p0, v3, v4}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->addCheckbox(Ljava/lang/String;I)V

    .line 203
    const-string v3, "com.twitter.v1"

    const v4, 0x7f0c007b

    invoke-direct {p0, v3, v4}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->addCheckbox(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    const v0, 0x7f08028f

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->createErrorDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_1
    const v0, 0x7f080290

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->createErrorDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->createProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 5
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 227
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    if-ne p1, v3, :cond_1

    .line 228
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    .line 229
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSupportedProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 230
    .local v1, provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->updateProviderCheckbox(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    goto :goto_0

    .line 232
    .end local v1           #provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    :cond_0
    instance-of v3, p2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 233
    check-cast v2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    .line 234
    .local v2, requestControllerException:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_2

    .line 235
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->showDialog(I)V

    .line 241
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #requestControllerException:Lcom/scoreloop/client/android/core/controller/RequestControllerException;
    :cond_1
    :goto_1
    return-void

    .line 239
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->showDialog(I)V

    goto :goto_1
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 5
    .parameter "aRequestController"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;

    if-ne p1, v1, :cond_0

    .line 246
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->dismissDialog(I)V

    .line 247
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getPostText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/scoreloop/client/android/ui/framework/BaseActivity;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->finish()V

    .line 251
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public socialProviderControllerDidCancel(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    .line 256
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->updateProviderCheckbox(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    .line 257
    return-void
.end method

.method public socialProviderControllerDidEnterInvalidCredentials(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    .line 262
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->updateProviderCheckbox(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    .line 263
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->showDialog(I)V

    .line 264
    return-void
.end method

.method public socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "controller"
    .parameter "error"

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    .line 269
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->updateProviderCheckbox(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    .line 270
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->showDialog(I)V

    .line 271
    return-void
.end method

.method public socialProviderControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V

    .line 276
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->updateProviderCheckbox(Lcom/scoreloop/client/android/core/model/SocialProvider;)V

    .line 277
    return-void
.end method
