.class Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$2;
.super Ljava/lang/Object;
.source "SocialHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper;->showSocialDialog(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$2;->val$ctx:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/SocialHelper$2;->val$ctx:Landroid/content/Context;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
