.class public Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIActivityIndicator.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DETERMINANT:I = 0x1

.field public static final DIALOG:I = 0x1

.field public static final INDETERMINANT:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "TiUIActivityIndicator"

.field private static final MSG_HIDE:I = 0x66

.field private static final MSG_PROGRESS:I = 0x65

.field private static final MSG_SHOW:I = 0x64

.field public static final STATUS_BAR:I


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected incrementFactor:I

.field protected location:I

.field protected max:I

.field protected min:I

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected statusBarTitle:Ljava/lang/String;

.field protected type:I

.field protected visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 53
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->DBG:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "TiUIActivityIndicator"

    const-string v1, "Creating an activity indicator"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handler:Landroid/os/Handler;

    .line 57
    return-void
.end method


# virtual methods
.method protected handleHide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 216
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 218
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 227
    :goto_0
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    .line 228
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 221
    .local v0, parent:Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 224
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 81
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handleShow()V

    move v1, v3

    .line 64
    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    :goto_1
    move v1, v3

    .line 73
    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 71
    .local v0, parent:Landroid/app/Activity;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_1

    .line 76
    .end local v0           #parent:Landroid/app/Activity;
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handleHide()V

    move v1, v3

    .line 77
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleShow()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "location"

    const-string v10, "Unknown type: "

    const-string v9, "TiUIActivityIndicator"

    .line 128
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 130
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, ""

    .line 131
    .local v2, message:Ljava/lang/String;
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    :cond_0
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    .line 136
    const-string v4, "location"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    const-string v4, "location"

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    .line 140
    :cond_1
    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    .line 141
    const-string v4, "min"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    const-string v4, "min"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    .line 145
    :cond_2
    const/16 v4, 0x64

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    .line 146
    const-string v4, "max"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    const-string v4, "max"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    .line 150
    :cond_3
    iput v8, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    .line 151
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    const-string v4, "type"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    .line 155
    :cond_4
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    if-nez v4, :cond_7

    .line 156
    const/16 v4, 0x2710

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    iput v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->incrementFactor:I

    .line 157
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 159
    .local v3, parent:Landroid/app/Activity;
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-nez v4, :cond_5

    .line 160
    invoke-virtual {v3, v7}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 161
    invoke-virtual {v3, v7}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 162
    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    .line 163
    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    .end local v3           #parent:Landroid/app/Activity;
    :goto_0
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    .line 205
    return-void

    .line 164
    .restart local v3       #parent:Landroid/app/Activity;
    :cond_5
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-ne v4, v7, :cond_6

    .line 165
    invoke-virtual {v3, v8}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 166
    invoke-virtual {v3, v8}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 167
    invoke-virtual {v3, v7}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 168
    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->statusBarTitle:Ljava/lang/String;

    .line 169
    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_6
    const-string v4, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v3           #parent:Landroid/app/Activity;
    :cond_7
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    if-ne v4, v7, :cond_d

    .line 174
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->incrementFactor:I

    .line 175
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_9

    .line 176
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 177
    .local v0, a:Landroid/content/Context;
    if-nez v0, :cond_8

    .line 178
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 180
    :cond_8
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 183
    .end local v0           #a:Landroid/content/Context;
    :cond_9
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 186
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-nez v4, :cond_a

    .line 187
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 200
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 188
    :cond_a
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    if-ne v4, v7, :cond_c

    .line 189
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 190
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 191
    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    if-eqz v4, :cond_b

    .line 192
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    iget v6, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 196
    :goto_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    .line 194
    :cond_b
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->max:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_2

    .line 198
    :cond_c
    const-string v4, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_d
    const-string v4, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->location:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 209
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 90
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 95
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->DBG:Z

    if-eqz v3, :cond_0

    .line 96
    const-string v3, "TiUIActivityIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const-string v3, "message"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    .line 101
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->progressDialog:Landroid/app/ProgressDialog;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v3, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 103
    .restart local p3
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 104
    .local v0, parent:Landroid/app/Activity;
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    .end local v0           #parent:Landroid/app/Activity;
    .restart local p3
    :cond_3
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v3, :cond_1

    .line 109
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 110
    .local v2, value:I
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->min:I

    sub-int v3, v2, v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->incrementFactor:I

    mul-int v1, v3, v4

    .line 112
    .local v1, thePos:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handler:Landroid/os/Handler;

    const/16 v4, 0x65

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 115
    .end local v1           #thePos:I
    .end local v2           #value:I
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 121
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->visible:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->handleShow()V

    goto :goto_0
.end method
