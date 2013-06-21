.class public Lti/modules/titanium/media/VideoPlayerProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "VideoPlayerProxy.java"


# static fields
.field protected static final CONTROL_MSG_COMPLETE:I = 0x65

.field protected static final CONTROL_MSG_LOAD:I = 0x64

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "VideoPlayerProxy"


# instance fields
.field private activityMessenger:Landroid/os/Messenger;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private controlHandler:Landroid/os/Handler;

.field private play:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->children:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    return v0
.end method

.method private createControlHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lti/modules/titanium/media/VideoPlayerProxy$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/media/VideoPlayerProxy$2;-><init>(Lti/modules/titanium/media/VideoPlayerProxy;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 109
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lti/modules/titanium/media/VideoPlayerProxy;->sendAddMessage(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->children:Ljava/util/List;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .parameter "options"

    .prologue
    const-string v10, "url"

    const-string v9, "VideoPlayerProxy"

    const-string v8, "play"

    const-string v7, "contentURL"

    const-string v6, "backgroundColor"

    .line 51
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    .line 52
    .local v2, tiContext:Lorg/appcelerator/titanium/TiContext;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lti/modules/titanium/media/TiVideoActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 55
    .local v3, url:Ljava/lang/String;
    const-string v4, "contentURL"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 56
    const-string v4, "contentURL"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v4, "VideoPlayerProxy"

    const-string v4, "contentURL is deprecated, use url instead"

    invoke-static {v9, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    sget-boolean v4, Lti/modules/titanium/media/VideoPlayerProxy;->DBG:Z

    if-eqz v4, :cond_1

    .line 65
    const-string v4, "VideoPlayerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    const-string v4, "contentURL"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_2
    const-string v4, "backgroundColor"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    const-string v4, "backgroundColor"

    const-string v4, "backgroundColor"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    :cond_3
    const-string v4, "play"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    const-string v4, "play"

    const-string v4, "play"

    invoke-static {p1, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->createControlHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/media/VideoPlayerProxy;->controlHandler:Landroid/os/Handler;

    .line 77
    const-string v4, "messenger"

    new-instance v5, Landroid/os/Messenger;

    iget-object v6, p0, Lti/modules/titanium/media/VideoPlayerProxy;->controlHandler:Landroid/os/Handler;

    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    new-instance v1, Lti/modules/titanium/media/VideoPlayerProxy$1;

    iget-object v4, p0, Lti/modules/titanium/media/VideoPlayerProxy;->controlHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v4}, Lti/modules/titanium/media/VideoPlayerProxy$1;-><init>(Lti/modules/titanium/media/VideoPlayerProxy;Landroid/os/Handler;)V

    .line 89
    .local v1, messengerReceiver:Landroid/os/ResultReceiver;
    const-string v4, "messengerReceiver"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void

    .line 58
    .end local v1           #messengerReceiver:Landroid/os/ResultReceiver;
    :cond_5
    const-string v4, "url"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const-string v4, "url"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public hide()V
    .locals 5

    .prologue
    .line 170
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 172
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 173
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x2713

    iput v2, v1, Landroid/os/Message;->what:I

    .line 174
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VideoPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send hide message: "

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

.method public play()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->sendPlayMessage()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/VideoPlayerProxy;->play:Z

    goto :goto_0
.end method

.method protected sendAddMessage(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 121
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x2711

    iput v2, v1, Landroid/os/Message;->what:I

    .line 122
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VideoPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to add view, Activity is no longer available: "

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

.method protected sendPlayMessage()V
    .locals 5

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 144
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x2710

    iput v2, v1, Landroid/os/Message;->what:I

    .line 145
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VideoPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send play message: "

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

.method protected setActivityMessenger(Landroid/os/Messenger;)V
    .locals 4
    .parameter "messenger"

    .prologue
    .line 95
    iput-object p1, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    .line 96
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->children:Ljava/util/List;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/media/VideoPlayerProxy;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 98
    .local v0, child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/media/VideoPlayerProxy;->sendAddMessage(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 100
    .end local v0           #child:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-boolean v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->play:Z

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0}, Lti/modules/titanium/media/VideoPlayerProxy;->sendPlayMessage()V

    .line 104
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 154
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 156
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x2712

    iput v2, v1, Landroid/os/Message;->what:I

    .line 158
    iget-object v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->activityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VideoPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send stop message: "

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

    .line 163
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/media/VideoPlayerProxy;->play:Z

    goto :goto_0
.end method
