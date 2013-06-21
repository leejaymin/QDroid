.class public Lti/modules/titanium/ui/widget/TiUIDialog;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_MASK:I = 0x10000000

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUIDialog"


# instance fields
.field protected builder:Landroid/app/AlertDialog$Builder;

.field protected dialog:Landroid/app/AlertDialog;

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 47
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "TiUIDialog"

    const-string v1, "Creating a dialog"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->createBuilder()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIDialog;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    return v0
.end method

.method private createBuilder()V
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 245
    .local v0, currentActivity:Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 246
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 247
    return-void
.end method

.method private getBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->createBuilder()V

    .line 65
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 55
    .local v0, currentActivity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 56
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method private processButtons([Ljava/lang/String;)V
    .locals 5
    .parameter "buttonText"

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const/4 v1, 0x0

    .local v1, id:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 122
    aget-object v2, p1, v1

    .line 123
    .local v2, text:Ljava/lang/String;
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;

    const/high16 v3, 0x1000

    or-int/2addr v3, v1

    invoke-direct {v0, p0, v3}, Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;I)V

    .line 124
    .local v0, clicker:Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    packed-switch v1, :pswitch_data_0

    .line 135
    const-string v3, "TiUIDialog"

    const-string v4, "Only 3 buttons are supported"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :pswitch_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 129
    :pswitch_1
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 138
    .end local v0           #clicker:Lti/modules/titanium/ui/widget/TiUIDialog$ClickHandler;
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processOptions([Ljava/lang/String;)V
    .locals 3
    .parameter "optionText"

    .prologue
    .line 99
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Lti/modules/titanium/ui/widget/TiUIDialog$1;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$1;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    return-void
.end method

.method private processOptions([Ljava/lang/String;I)V
    .locals 2
    .parameter "optionText"
    .parameter "selectedIndex"

    .prologue
    .line 108
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/TiUIDialog$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$2;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    return-void
.end method

.method private processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 143
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v4, "button"

    const-string v6, "cancel"

    .line 250
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "cancel"

    invoke-virtual {v2, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "cancel"

    invoke-virtual {v2, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .line 252
    .local v0, cancelIndex:I
    :goto_0
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 253
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const/high16 v2, 0x1000

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    .line 254
    const-string v2, "button"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const v2, -0x10000001

    and-int/2addr p1, v2

    .line 263
    :cond_0
    :goto_1
    const-string v2, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "cancel"

    if-ne p1, v0, :cond_3

    move v2, v7

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "click"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 267
    return-void

    .line 250
    .end local v0           #cancelIndex:I
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0

    .line 257
    .restart local v0       #cancelIndex:I
    .restart local v1       #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    const-string v2, "button"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "options"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "selectedIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    move v2, v5

    .line 265
    goto :goto_2
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 234
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 236
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 238
    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 240
    :cond_1
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "d"

    .prologue
    const-string v9, "selectedIndex"

    const-string v8, "options"

    const-string v7, "message"

    const-string v6, "buttonNames"

    const-string v5, "androidView"

    .line 70
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_0
    const-string v3, "message"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    :cond_1
    const-string v3, "buttonNames"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    const-string v3, "buttonNames"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, buttonText:[Ljava/lang/String;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    .line 81
    .end local v0           #buttonText:[Ljava/lang/String;
    :cond_2
    const-string v3, "androidView"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "androidView"

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 95
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 96
    return-void

    .line 83
    :cond_4
    const-string v3, "options"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    const-string v3, "options"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, optionText:[Ljava/lang/String;
    const-string v3, "selectedIndex"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "selectedIndex"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 86
    .local v2, selectedIndex:I
    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_6

    .line 87
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    if-eqz v3, :cond_5

    .line 88
    const-string v3, "TiUIDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ooops invalid selected index specified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_5
    const/4 v2, -0x1

    .line 93
    :cond_6
    invoke-direct {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto :goto_0

    .line 85
    .end local v2           #selectedIndex:I
    :cond_7
    const/4 v3, -0x1

    move v2, v3

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 8
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    const-string v7, "androidView"

    const-string v6, "selectedIndex"

    const-string v5, "options"

    .line 150
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUIDialog;->DBG:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "TiUIDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 158
    .restart local p3
    :cond_2
    const-string v1, "message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    .restart local p3
    :cond_3
    const-string v1, "buttonNames"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 165
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 168
    :cond_4
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->processButtons([Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .restart local p3
    :cond_5
    const-string v1, "options"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 170
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 171
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 175
    :cond_6
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 176
    const/4 v0, -0x1

    .line 177
    .local v0, selectedIndex:I
    const-string v1, "selectedIndex"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 178
    const-string v1, "selectedIndex"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 180
    :cond_7
    check-cast p3, [Ljava/lang/Object;

    .end local p3
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    .end local v0           #selectedIndex:I
    .restart local p3
    :cond_8
    const-string v1, "selectedIndex"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9

    .line 183
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 184
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 187
    :cond_9
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 188
    const-string v1, "options"

    invoke-virtual {p4, v5}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "options"

    invoke-virtual {p4, v5}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 192
    :cond_a
    const-string v1, "androidView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 193
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b

    .line 194
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 195
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 197
    :cond_b
    if-eqz p3, :cond_c

    .line 198
    check-cast p3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p3
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIDialog;->processView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto/16 :goto_0

    .line 200
    .restart local p3
    :cond_c
    const-string v1, "androidView"

    const/4 v1, 0x0

    invoke-virtual {p4, v7, v4, v1}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 203
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "options"

    .prologue
    .line 208
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIDialog;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 210
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lti/modules/titanium/ui/widget/TiUIDialog$3;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiUIDialog$3;-><init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIDialog;->getBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 227
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "TiUIDialog"

    const-string v2, "Window must have gone away."

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
