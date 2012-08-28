.class final Lorg/theb/ssh/HostsList$2;
.super Ljava/lang/Object;
.source "HostsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/theb/ssh/HostsList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/theb/ssh/HostsList;

.field private final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/theb/ssh/HostsList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/theb/ssh/HostsList$2;->this$0:Lorg/theb/ssh/HostsList;

    iput-object p2, p0, Lorg/theb/ssh/HostsList$2;->val$nickname:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 344
    :try_start_0
    iget-object v2, p0, Lorg/theb/ssh/HostsList$2;->this$0:Lorg/theb/ssh/HostsList;

    iget-object v2, v2, Lorg/theb/ssh/HostsList;->waitPassword:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 347
    iget-object v2, p0, Lorg/theb/ssh/HostsList$2;->this$0:Lorg/theb/ssh/HostsList;

    iget-object v2, v2, Lorg/theb/ssh/HostsList;->password:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 351
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/theb/ssh/HostsList$2;->this$0:Lorg/theb/ssh/HostsList;

    const-class v3, Lorg/connectbot/Console;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lorg/theb/ssh/HostsList$2;->val$nickname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    iget-object v2, p0, Lorg/theb/ssh/HostsList$2;->this$0:Lorg/theb/ssh/HostsList;

    invoke-virtual {v2, v1}, Lorg/theb/ssh/HostsList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/theb/ssh/HostsList$2;->this$0:Lorg/theb/ssh/HostsList;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/theb/ssh/HostsList;->password:Ljava/lang/String;

    .line 359
    return-void

    .line 355
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 356
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
