.class public Lorg/appcelerator/titanium/proxy/ActivityProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ActivityProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityProxy"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field protected resultCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V
    .locals 0
    .parameter "tiContext"
    .parameter "activity"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V

    .line 45
    return-void
.end method


# virtual methods
.method public finish(Lorg/appcelerator/kroll/KrollInvocation;)V
    .locals 1
    .parameter "invocation"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 183
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;
    .locals 2
    .parameter "invocation"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->activity:Landroid/app/Activity;

    .line 59
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 72
    :goto_0
    return-object v1

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_0

    .line 72
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->activity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getString(Lorg/appcelerator/kroll/KrollInvocation;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "invocation"
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 138
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_1

    .line 139
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    .line 141
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 200
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 202
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "error"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 188
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 190
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "resultCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "intent"

    new-instance v2, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->activity:Landroid/app/Activity;

    .line 224
    return-void
.end method

.method public setActivity(Lorg/appcelerator/titanium/TiContext;Landroid/app/Activity;)V
    .locals 3
    .parameter "tiContext"
    .parameter "activity"

    .prologue
    .line 49
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->activity:Landroid/app/Activity;

    .line 50
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/content/Intent;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 54
    :cond_0
    return-void
.end method

.method public setRequestedOrientation(Lorg/appcelerator/kroll/KrollInvocation;I)V
    .locals 1
    .parameter "invocation"
    .parameter "orientation"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public setResult(Lorg/appcelerator/kroll/KrollInvocation;ILorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .parameter "invocation"
    .end parameter
    .parameter "resultCode"
    .end parameter
    .parameter "intent"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 167
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 168
    if-nez p3, :cond_1

    .line 169
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p3}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivity(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .parameter "invocation"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_0
    return-void
.end method

.method public startActivityForResult(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/IntentProxy;Lorg/appcelerator/titanium/kroll/KrollCallback;)V
    .locals 5
    .parameter "invocation"
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v1

    .line 89
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    instance-of v4, v1, Lorg/appcelerator/titanium/util/TiActivitySupport;

    if-eqz v4, :cond_1

    .line 92
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    move-object v3, v0

    .line 97
    :goto_0
    iput-object p3, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 98
    invoke-interface {v3}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v2

    .line 99
    .local v2, requestCode:I
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4, v2, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 101
    .end local v2           #requestCode:I
    .end local v3           #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_0
    return-void

    .line 94
    .restart local v3       #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_1
    new-instance v3, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .end local v3           #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-direct {v3, v1}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    .restart local v3       #support:Lorg/appcelerator/titanium/util/TiActivitySupport;
    goto :goto_0
.end method

.method public startActivityFromChild(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/ActivityProxy;Lorg/appcelerator/titanium/proxy/IntentProxy;I)V
    .locals 3
    .parameter "invocation"
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p4}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 111
    :cond_0
    return-void
.end method

.method public startActivityIfNeeded(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/IntentProxy;I)Z
    .locals 2
    .parameter "invocation"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v1

    .line 120
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startNextMatchingActivity(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/IntentProxy;)Z
    .locals 2
    .parameter "invocation"
    .parameter "intent"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/Activity;

    move-result-object v0

    .line 127
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 130
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
