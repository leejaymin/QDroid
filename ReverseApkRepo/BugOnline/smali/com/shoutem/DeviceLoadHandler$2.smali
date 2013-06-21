.class Lcom/shoutem/DeviceLoadHandler$2;
.super Ljava/lang/Object;
.source "DeviceLoadHandler.java"

# interfaces
.implements Lcom/shoutem/DeviceLoadHandler$IntentResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shoutem/DeviceLoadHandler;->playYouTubeVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/DeviceLoadHandler;

.field final synthetic val$mobilePageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/shoutem/DeviceLoadHandler;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/shoutem/DeviceLoadHandler$2;->this$0:Lcom/shoutem/DeviceLoadHandler;

    iput-object p2, p0, Lcom/shoutem/DeviceLoadHandler$2;->val$mobilePageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3
    .parameter "videoId"
    .parameter "resolveInfo"

    .prologue
    .line 212
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, ".*browser.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/shoutem/DeviceLoadHandler$2;->val$mobilePageUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
