.class public Lti/modules/titanium/media/TiVideoActivity;
.super Landroid/app/Activity;
.source "TiVideoActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiVideoActivity"

.field public static final MSG_ADD_VIEW:I = 0x2711

.field public static final MSG_HIDE:I = 0x2713

.field public static final MSG_PLAY:I = 0x2710

.field public static final MSG_STOP_PLAYBACK:I = 0x2712


# instance fields
.field private contentUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private messengerReceiver:Landroid/os/ResultReceiver;

.field private proxyMessenger:Landroid/os/Messenger;

.field private started:Z

.field private videoView:Landroid/widget/TiVideoView4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/TiVideoActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/TiVideoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/media/TiVideoActivity;)Landroid/widget/TiVideoView4;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/TiVideoActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lti/modules/titanium/media/TiVideoActivity;->sendProxyMessage(I)V

    return-void
.end method

.method static synthetic access$302(Lti/modules/titanium/media/TiVideoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    return p1
.end method

.method private sendProxyMessage(I)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 220
    iget-object v2, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 221
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 222
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 224
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 225
    .restart local v1       #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TiVideoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoPlayerProxy no longer available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 132
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move v4, v5

    .line 171
    :goto_0
    return v4

    .line 135
    :pswitch_0
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->contentUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 136
    .local v2, uri:Landroid/net/Uri;
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v4, v2}, Landroid/widget/TiVideoView4;->setVideoURI(Landroid/net/Uri;)V

    .line 137
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v4}, Landroid/widget/TiVideoView4;->start()V

    .line 138
    iput-boolean v6, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    move v4, v6

    .line 140
    goto :goto_0

    .line 145
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 146
    .local v0, proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 147
    .local v1, tiv:Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 149
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move v4, v6

    .line 151
    goto :goto_0

    .line 155
    .end local v0           #proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #tiv:Lorg/appcelerator/titanium/view/TiUIView;
    .end local v3           #v:Landroid/view/View;
    :pswitch_2
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    if-eqz v4, :cond_1

    .line 156
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v4}, Landroid/widget/TiVideoView4;->stopPlayback()V

    .line 157
    iput-boolean v5, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    move v4, v6

    .line 158
    goto :goto_0

    :cond_1
    move v4, v5

    .line 160
    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v4}, Landroid/widget/TiVideoView4;->stopPlayback()V

    .line 165
    iput-boolean v5, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    .line 167
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->finish()V

    move v4, v6

    .line 168
    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const-string v9, "backgroundColor"

    const-string v8, "TiVideoActivity"

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-boolean v5, Lti/modules/titanium/media/TiVideoActivity;->DBG:Z

    if-eqz v5, :cond_0

    .line 64
    const-string v5, "TiVideoActivity"

    const-string v5, "TiVideoActivity onCreate"

    invoke-static {v8, v5}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->handler:Landroid/os/Handler;

    .line 68
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "contentURL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->contentUrl:Ljava/lang/String;

    .line 71
    const-string v5, "play"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 72
    .local v3, play:Z
    new-instance v5, Landroid/widget/TiVideoView4;

    invoke-direct {v5, p0}, Landroid/widget/TiVideoView4;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    .line 74
    if-eqz v3, :cond_1

    .line 75
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lti/modules/titanium/media/TiVideoActivity$1;

    invoke-direct {v5, p0}, Lti/modules/titanium/media/TiVideoActivity$1;-><init>(Lti/modules/titanium/media/TiVideoActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    .local v4, t:Ljava/lang/Thread;
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 86
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 89
    .end local v4           #t:Ljava/lang/Thread;
    :cond_1
    const-string v5, "messenger"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    iput-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    .line 90
    const-string v5, "messengerReceiver"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    iput-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->messengerReceiver:Landroid/os/ResultReceiver;

    .line 92
    const-string v5, "backgroundColor"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "backgroundColor"

    const/high16 v5, -0x1

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 94
    .local v0, d:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .end local v0           #d:Landroid/graphics/drawable/ColorDrawable;
    :cond_2
    new-instance v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v5, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 98
    iget-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    new-instance v6, Lti/modules/titanium/media/TiVideoActivity$2;

    invoke-direct {v6, p0}, Lti/modules/titanium/media/TiVideoActivity$2;-><init>(Lti/modules/titanium/media/TiVideoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TiVideoView4;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 106
    iget-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    new-instance v6, Lti/modules/titanium/media/TiVideoActivity$3;

    invoke-direct {v6, p0}, Lti/modules/titanium/media/TiVideoActivity$3;-><init>(Lti/modules/titanium/media/TiVideoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TiVideoView4;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    iget-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    new-instance v6, Landroid/widget/MediaController;

    invoke-direct {v6, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/TiVideoView4;->setMediaController(Landroid/widget/MediaController;)V

    .line 116
    iget-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v5}, Landroid/widget/TiVideoView4;->requestFocus()Z

    .line 118
    new-instance v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 121
    .local v2, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v7, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 122
    iput-boolean v7, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 123
    iget-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v6, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v5, v6, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v5, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v5}, Lti/modules/titanium/media/TiVideoActivity;->setContentView(Landroid/view/View;)V

    .line 126
    const-string v5, "TiVideoActivity"

    const-string v5, "exiting onCreate"

    invoke-static {v8, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->stopPlayback()V

    .line 211
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->removeAllViews()V

    .line 213
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->proxyMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 214
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lti/modules/titanium/media/TiVideoActivity;->sendProxyMessage(I)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 204
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->pause()V

    .line 205
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    invoke-virtual {p0}, Lti/modules/titanium/media/TiVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 195
    iget-boolean v0, p0, Lti/modules/titanium/media/TiVideoActivity;->started:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->start()V

    .line 198
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 178
    iget-object v1, p0, Lti/modules/titanium/media/TiVideoActivity;->messengerReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_1

    .line 179
    sget-boolean v1, Lti/modules/titanium/media/TiVideoActivity;->DBG:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "TiVideoActivity"

    const-string v2, "Sending messenger to VideoPlayerProxy"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, resultData:Landroid/os/Bundle;
    const-string v1, "messenger"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lti/modules/titanium/media/TiVideoActivity;->handler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    iget-object v1, p0, Lti/modules/titanium/media/TiVideoActivity;->messengerReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/TiVideoActivity;->messengerReceiver:Landroid/os/ResultReceiver;

    .line 187
    .end local v0           #resultData:Landroid/os/Bundle;
    :cond_1
    return-void
.end method
