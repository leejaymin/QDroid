.class Lorg/connectbot/service/ConnectionNotifier$PreEclair;
.super Lorg/connectbot/service/ConnectionNotifier;
.source "ConnectionNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/ConnectionNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreEclair"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/service/ConnectionNotifier$PreEclair$Holder;
    }
.end annotation


# static fields
.field private static final setForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private setForeground:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForegroundSignature:[Ljava/lang/Class;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/connectbot/service/ConnectionNotifier;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForeground:Ljava/lang/reflect/Method;

    .line 143
    :try_start_0
    const-class v0, Landroid/app/Service;

    const-string v1, "setForeground"

    sget-object v2, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public hideRunningNotification(Landroid/app/Service;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-object v1, p0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 165
    new-array v0, v3, [Ljava/lang/Object;

    .line 166
    .local v0, setForegroundArgs:[Ljava/lang/Object;
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForeground:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 174
    .end local v0           #setForegroundArgs:[Ljava/lang/Object;
    :cond_0
    return-void

    .line 170
    .restart local v0       #setForegroundArgs:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public showRunningNotification(Landroid/app/Service;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 150
    iget-object v1, p0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForeground:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 151
    new-array v0, v3, [Ljava/lang/Object;

    .line 152
    .local v0, setForegroundArgs:[Ljava/lang/Object;
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->setForeground:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier$PreEclair;->newRunningNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 160
    .end local v0           #setForegroundArgs:[Ljava/lang/Object;
    :cond_0
    return-void

    .line 156
    .restart local v0       #setForegroundArgs:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 155
    :catch_1
    move-exception v1

    goto :goto_0
.end method
